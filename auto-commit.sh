git pull -q https://github.com/dfernandezcalle/testing-auto-commit.git main
if [[ `git status --porcelain` ]]; then
    git add test.yaml
    day=`date` 
    git commit -m "Commit - $day"
    now=`date +%s%N`
    git tag $now
    git push -q https://github.com/dfernandezcalle/testing-auto-commit.git main $now
else
  echo "No changes"
fi