/* Logo dynamique WeBash
 * Par Alnotz !
 * Version 1.2 (31/17/2020)
 */
/*
   _______________________________
  /._____________________. ._. ._.\
 / |_____________________| |_| |_| \
/___________________________________\
|                                   |
|               _____     _____     |
|              /    /    /    /     |
|        _____/    /____/    /____  |  __          __    __     _ ___
|       /                        /  |  \ \        / /   / /    | |  \\
|      /____     _____     _____/   |   \ \      / /   / /     | |  ||            |
|          /    /    /    /         |    \ \    / /   / / ___  | |__//  ___   ___ |__
|    _____/    /____/    /____      |     \ \  / /\  / / /___\ | |  \\  ___\ /    |  \
|   /                        /      |      \ \/ /\ \/ /  |     | |  || /   | `--, |  |
|  /____     _____     _____/       |       \_\/  \_\/   \___/ |_|__// \___| ___/ |  |
|      /    /    /    /             |
|     /____/    /____/              |
|                                   |
\                                   /
 \_________________________________/
 */
/* g++ -Wall -Wextra -c WeBashLogo.cpp && g++ -Wall -Wextra WeBashLogo.o -o WeBashLogo */
#include <stdio.h>//I/O en C
#include <iostream>//I/O en C++.
#include <string.h>//Caractères C.
#include <string>//Caractères C++.
#include <stdlib.h>//Fonctions complémentaires en C.
#include <unistd.h>//Non standard en C de GNU pour 'usleep()'.
#include <time.h>//Non standard en C de GNU pour 'nanousleep()'.
/* En ce qui concerne les dimensions des symboles et lettres. */
#define LOGO_LIGNES 19
#define LOGO_COLONNES 80
#define LETTRES_LIGNES 19
#define LETTRES_COLONNES 23
#define SORTIE_LIGNES 19
#define SORTIE_COLONNES 100
/* Temps de pause (microsecondes). */
#define TEMPS_L 800000
#define TEMPS_C 200000
#define TEMPS_TC 50000
/* Fonction d'aide. */
void help_info(char *commName)
{
  printf(
  "Aide pour %s :\n\
  Commandes : %s [-h | --help | -v | --verbose] [SYMBOLE]\n\n\
  -h --help\t\tInformation sur les commandes.\n\n\
  -v --verbose\t\tMode bavard pour les tests. Ajouter une valeur\
  SYMBOLE affiche le symbole correspondant.\n\n\
  SYMBOLE\t\tUne des valeurs de 1 à 6 pour les 6 lettres de WeBash\
  ou 0 pour le logo initial ou encore N pour une fenêtre sans croisillon.\n",
  commName,commName);
}
/* Le logo seul. */
char logo0[LOGO_LIGNES][LOGO_COLONNES] = 
{
  "   _______________________________   \n",
  "  /._____________________. ._. ._.\\  \n",
  " / |_____________________| |_| |_| \\ \n",
  "/___________________________________\\\n",
  "|                                   |\n",
  "|\x1b[0;31;40m               _____     _____     \x1b[0m|\n",
  "|\x1b[0;31;40m              /    /    /    /     \x1b[0m|\n",
  "|\x1b[0;31;40m        _____/    /____/    /____  \x1b[0m|\n",
  "|\x1b[0;31;40m       /                        /  \x1b[0m|\n",
  "|\x1b[0;31;40m      /____     _____     _____/   \x1b[0m|\n",
  "|\x1b[0;31;40m          /    /    /    /         \x1b[0m|\n",
  "|\x1b[0;31;40m    _____/    /____/    /____      \x1b[0m|\n",
  "|\x1b[0;31;40m   /                        /      \x1b[0m|\n",
  "|\x1b[0;31;40m  /____     _____     _____/       \x1b[0m|\n",
  "|\x1b[0;31;40m      /    /    /    /             \x1b[0m|\n",
  "|\x1b[0;31;40m     /____/    /____/              \x1b[0m|  \x1b[5;39;40m######\x1b[0;0;0m\n",
  "|\x1b[0;31;40m                                   \x1b[0m|\n",
  "\\                                   /\n",
  " \\_________________________________/ \n"
};
/* Le logo vide. */
char logoN[LOGO_LIGNES][LOGO_COLONNES] = 
{
  "   _______________________________   \n",
  "  /._____________________. ._. ._.\\  \n",
  " / |_____________________| |_| |_| \\ \n",
  "/___________________________________\\\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "|                                   |\n",
  "\\   \x1b[5;31;40m#############################\x1b[0m   /\n",
  " \\_________________________________/ \n"
};
/* La lettre 'W'. */
char logo1[LETTRES_LIGNES][LETTRES_COLONNES] = 
{
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "__          __    __\n",
  "\\ \\        / /   / /\n",
  " \\ \\      / /   / / \n",
  "  \\ \\    / /   / /  \n",
  "   \\ \\  / /\\  / /   \n",
  "    \\ \\/ /\\ \\/ /    \n",
  "     \\_\\/  \\_\\/     \n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n"
};
/* La lettre 'e'. */
char logo2[LETTRES_LIGNES+4][LETTRES_COLONNES+4] = 
{
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "__          __    __\n",
  "\\ \\        / /   / /\n",
  " \\ \\      / /   / / \n",
  "  \\ \\    / /   / / ___ \n",
  "   \\ \\  / /\\  / / /___\\\n",
  "    \\ \\/ /\\ \\/ /  |    \n",
  "     \\_\\/  \\_\\/   \\___/\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n"
};
/* La lettre 'B'. */
char logo3[LETTRES_LIGNES][LETTRES_COLONNES] = 
{
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  " _ ___ \n",
  "| |  \\\\\n",
  "| |  ||\n",
  "| |__//\n",
  "| |  \\\\\n",
  "| |  ||\n",
  "|_|__//\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n"
};
/* La lettre 'a'. */
char logo4[LETTRES_LIGNES][LETTRES_COLONNES] = 
{
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "     \n",
  "     \n",
  "     \n",
  " ___ \n",
  " ___\\\n",
  "/   |\n",
  "\\___|\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n"
};
/* La lettre 's'. */
char logo5[LETTRES_LIGNES][LETTRES_COLONNES] = 
{
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "    \n",
  "    \n",
  "    \n",
  " ___\n",
  "/   \n",
  "`--,\n",
  "___/\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n"
};
/* La lettre 'h'. */
char logo6[LETTRES_LIGNES][LETTRES_COLONNES] = 
{
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "    \n",
  "    \n",
  "|   \n",
  "|__ \n",
  "|  \\\n",
  "|  |\n",
  "|  |\n",
  "\n",
  "\n",
  "\n",
  "\n",
  "\n"
};
void essai(int argc, char **argv, char **envp)
{
  std::cout << "=================\n===== Tests =====\n=================" << std::endl;
  printf("Hello C world !\n");
  std::cout << "Hello C++ World too !" << std::endl;
  std::cout << "Name : " << argv[0] << std::endl;
  std::cout << "Arg. count : " << argc << std::endl;
  std::cout << "Argument : ";
  if(argc <= 1){std::cout << "Null";}else{std::cout << argv[argc-1];}
  std::cout << std::endl;
  std::cout << "\t== Terminal ==" << std::endl;
  if(isatty(0))
  {
    std::cout << "Current teletyper : " << ttyname(0) << std::endl;
  }
  else
  {
    std::cout << "Without teletyper." << std::endl;
  }
  /* Variables d'environnement. */
  int i = 0;
  std::cout << "\t== Environnement envp ==" << std::endl;
  for(i=0;envp[i]!=NULL;i++){std::cout << envp[i] << std::endl;}
  std::cout << "\t== Environnement getenv() ==" << std::endl;
  char *environ = getenv("");
  std::cout << environ << std::endl;
  std::cout << "\tLogo :" << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i];
  }
  std::cout << std::endl;
  std::cout << "\t== Test ligne dynamique ==" << std::endl;
  std::cout << "Que Du Teeeeeexte !" << std::endl;
  usleep(500000);
  std::cout << "\x1b[1A\x1b[0K" << "Juste du texte." << std::endl;
  char *argument = argv[argc-1];
  /* Pour vérifier les caractères, ajouter un numéro de 1 à 6.
    * La lettre 'N' correspond à une fenêtre vide, le chiffre '0'
    * au logo de WeBash.
    */
  std::cout << "\t== Symboles ==" << std::endl;
  if(!strcmp(argument,"N"))
  {
    for(i=0;i<LOGO_LIGNES;i++)
    {
      std::cout << logoN[i];
    }
  }
  if(!strcmp(argument,"0"))
  {
    for(i=0;i<LOGO_LIGNES;i++)
    {
      std::cout << logo0[i];
    }
  }
  if(!strcmp(argument,"1"))
  {
    for(i=0;i<LETTRES_LIGNES;i++)
    {
      std::cout << logo1[i];
    }
  }
  if(!strcmp(argument,"2"))
  {
    for(i=0;i<LETTRES_LIGNES+4;i++)
    {
      std::cout << logo2[i];
    }
  }
  if(!strcmp(argument,"3"))
  {
    for(i=0;i<LETTRES_LIGNES+4;i++)
    {
      std::cout << logo3[i];
    }
  }
  if(!strcmp(argument,"4"))
  {
    for(i=0;i<LETTRES_LIGNES;i++)
    {
      std::cout << logo4[i];
    }
  }
  if(!strcmp(argument,"5"))
  {
    for(i=0;i<LETTRES_LIGNES;i++)
    {
      std::cout << logo5[i];
    }
  }
  if(!strcmp(argument,"6"))
  {
    for(i=0;i<LETTRES_LIGNES;i++)
    {
      std::cout << logo6[i];
    }
  }
  std::cout << std::endl;
  std::cout << "=================\n=================\n=================" << std::endl;
}
void logoAnimation(void)
{
  const char *titre = "\x1b[4;31;40mWeBash\x1b[0;31;40m CLI logo\x1b[0m";
  /* La fenêtre vide. */
  std::cout << "\x1b[0J" << std::endl;
  std::cout << titre << std::endl;
  int i=0;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logoN[i];
  }
  std::cout << std::endl;
  usleep(TEMPS_L);
  /* La fenêtre avec un croisillon. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i];
  }
  std::cout <<  std::endl;
  usleep(TEMPS_L);
  /* Calque de la lettre 'W'. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i] << "\x1b[1A\x1b[40C" << logo1[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[18C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[62D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 'e'. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i] << "\x1b[1A\x1b[40C" << logo2[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[26C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[70D";
  std::cout <<  std::endl;
  usleep(TEMPS_L);
  /* Calque de la lettre 'B'. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i];
    std::cout << "\x1b[1A\x1b[65C" << logo3[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[34C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[78D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 'a'. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i];
    std::cout << "\x1b[1A\x1b[73C" << logo4[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[41C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[85D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 's'. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i];
    std::cout << "\x1b[1A\x1b[79C" << logo5[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[46C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[90D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 'h'. */
  std::cout << "\x1b[22A\x1b[0K" << std::endl;
  std::cout << titre << std::endl;
  for(i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << logo0[i];
    std::cout << "\x1b[1A\x1b[84C" << logo6[i];
  }
  std::cout << "\x1b[4A\x1b[38C" << "\x1b[0K\x1b[52C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[95D";
  std::cout <<  std::endl;
  usleep(TEMPS_L);
  /* Curseur clignotant effacé. */
  std::cout << "\x1b[5A\x1b[38C" << "\x1b[0K" << "\x1b[4B\x1b[95D" << std::endl;
  /* Signature finale. */
  std::cout << "\t\x1b[1A\x1b[1;31;40m";
  std::cout << "\x1b[5;31;40m_\x1b[0m" << std::endl;
  usleep(TEMPS_L);
  const char *signature = "By Alnotz ;-)";
  int n = 0;
  for(n=0;n<14;n++)
  {
    usleep(TEMPS_TC);
    std::cout << "\t\x1b[1A\x1b[1D\x1b[" << n+1 << "C\x1b[1;31;40m";
    std::cout << signature[n] << "\x1b[5;31;40m_\x1b[0m" << std::endl;
  }
}
/* Fonction principale. */
int main(int argc, char **argv, char **envp)
{
  /* Suite d'essais si "--verbose" ou "-v" en premier argument. */
  /* Affiche d'aide si "--help" ou "-h" en premier argument. */
  if(argc > 1)
  {
    if((!strcmp(argv[1],"-h") | !strcmp(argv[1],"--help")))
    {
      help_info(argv[0]);
      exit(EXIT_SUCCESS);
    }
    else if((!strcmp(argv[1],"-v") | !strcmp(argv[1],"--verbose")))
    {
      essai(argc, argv, envp);
      exit(EXIT_SUCCESS);
    }
    else
    {
      std::cerr << argv[0] << " : Mauvaise commande. Taper \'";
      std::cerr << argv[0] << " -h\' pour l'aide." << std::endl;
      exit(EXIT_FAILURE);
    }
  }
  else//Le cas normal où WeBash est animé.
  {
    std::cerr << "\x07";
    logoAnimation();
  }
  return EXIT_SUCCESS;
}
