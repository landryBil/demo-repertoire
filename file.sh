laisser exec=0
laisser no_exec=0
laisser dir=0
pour  je  dans  ` ls $1 `
    faire
    si [ -d  $1 / $i ]
    alors  echo  $i est exec ;  let dir++ ;  echo  $i  >> répertoires.txt
    elif [ -x  $1 / $i ]
    alors  echo  $i est dir ;  laissez exec++ ;  echo  $i  >> exécutables.txt
    autre
    laissez no_exec++
    Fi
Fini
echo  $exec fichiers sont exécutables, $dir sont des dossiers
