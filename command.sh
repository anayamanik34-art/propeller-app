# Step 1 - Create React app
npx.cmd create-react-app propeller-app

# Step 2 - Commit code and create public GitHub repository
cd propeller-app
git status
gh repo create propeller-app --public --source=. --remote=origin --push

# Step 3 - Create and switch to update_logo branch
git checkout -b update_logo

# Step 4 - Replace existing logo
curl.exe -L "https://cdn-ikponof.nitrocdn.com/vGqfYAGlOLDkYkJqZhYIYKEsibdbZnkc/assets/images/optimized/rev-f684a87/www.propelleraero.com/wp-content/uploads/2023/05/footer-logo.svg" -o src\logo.svg

# Step 5 - Replace existing link
# Updated src/App.js:
# https://www.propelleraero.com/dirtmate/

# Step 6 - Commit and push changes
git add .
git commit -m "Update logo and link"
git push -u origin update_logo

# Step 7 - Create pull request
gh pr create --base master --head update_logo --title "Update logo" --body "Replace the React logo with the Propeller Aero logo and update the link."

# Step 8 - Merge pull request
gh pr merge --merge --delete-branch

# REPO_URL https://github.com/anayamanik34-art/propeller-app