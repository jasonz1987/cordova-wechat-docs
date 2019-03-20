git push origin --delete gh_pages
jekyll build --destination dist
git subtree push --prefix=dist origin gh-pages
