#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire
get_file_count() {
  find . -maxdepth 1 -type f | wc -l
}

# Obtenir le nombre réel de fichiers
actual_count=$(get_file_count)

# Boucle tant que l'utilisateur n'a pas trouvé le bon nombre
while true; do
  read -p "Combien y a-t-il de fichiers dans ce répertoire ? " user_guess

  if [[ $user_guess -eq $actual_count ]]; then
    echo "Félicitations, vous avez trouvé !"
    break
  elif [[ $user_guess -lt $actual_count ]]; then
    echo "Trop bas, essayez encore !"
  else
    echo "Trop haut, essayez encore !"
  fi
done
