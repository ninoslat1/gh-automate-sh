git add .

echo 'Enter the commit message:'

read commitMessage

git commit -m "$commitMessage"

echo 'Enter the name of the branch:'

read branch

git push origin $branch

npm run build

git add dist -f

git commit -m "update gh page"

git subtree push --prefix dist origin gh-pages

read
