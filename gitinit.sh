# sudo chmod 755 './gitinit.sh'
repo="https://github.com/MohsinEjaz21/udemy-database-engineering-hussein-naseer.git";
releaseNotes="Minor Update";

if [ -d .git ]; then
  echo "Git Repo already exists";
  git add .
  git commit -m "$releaseNotes"
  git push -u origin main
else
  echo "Initializing Git Repo";
  git init
  git add .
  git commit -m "$releaseNotes";
  git branch -M main
  git remote add origin $repo
  git push -u origin main
fi

