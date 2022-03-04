#!/bin/bash
org="transposit-connectors"
echo "enter the branch you want to merge on all repos"
read branchName
#branchName="bot/update-global-workflow-8f2d6882612239593dd0dff7a0e5fb4622902667"

repoNames="$(gh repo list transposit-connectors --limit 1000 --json name)"
#echo "${repoNames}" | jq -c '.[]'
i=1
for row in $(echo "${repoNames}" | jq -c '.[]'); do
  _jq() {
    echo ${row} | jq -r ${1}
  }
  repoName=$(_jq '.name')
  echo $i
  ((i=i+1))
  gh pr merge $branchName --repo $org/$repoName --merge --admin --delete-branch
done
