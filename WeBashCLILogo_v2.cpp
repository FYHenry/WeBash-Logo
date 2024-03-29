/* Logo dynamique WeBash
 * Par Alnotz !
 * Version 2.1 (24/07/2022)
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
/* g++ -std=c++17 -Wall -Wextra -c WeBashCLILogo_v2.cpp && g++ -Wall -Wextra WeBashCLILogo_v2.o -o WeBashCLILogo_v2 */
#include <iostream>//I/O en C++.
#include <string>//Caractères C++.
#include <unistd.h>//Non standard en C de GNU pour 'usleep()'.
#include <array>//Tableaux C++.
/* En ce qui concerne les dimensions des symboles et lettres. */
const auto LOGO_LIGNES = 19;
const auto LOGO_COLONNES = 80;
const auto LETTRES_LIGNES = 19;
const auto SORTIE_LIGNES = 19;
const auto SORTIE_COLONNES = 100;
/* Numéro de version. */
const auto LOGO_VERSION = std::string("2.1");
/* Temps de pause (microsecondes). */
const auto TEMPS_L = 800000;//Long.
const auto TEMPS_C = 200000;//Court.
const auto TEMPS_TC = 50000;//Très court.
const std::array SYMBOLES{"N", "0", "1", "2", "3", "4", "5", "6"};
typedef const std::array<std::string, LOGO_LIGNES> frame;//Trame de plusieurs lignes.
/* Le logo seul. */
frame LOGO0 = 
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
frame LOGON = 
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
frame LOGO1 = 
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
frame LOGO2 = 
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
frame LOGO3 = 
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
frame LOGO4 = 
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
frame LOGO5 = 
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
frame LOGO6 = 
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
/* Collection de trames. */
const std::array LOGOS{LOGON, LOGO0, LOGO1, LOGO2 ,LOGO3 ,LOGO4 ,LOGO5 ,LOGO6 };
/* Fonction d'aide. */
void help_info(char *commName)
{
  std::cout <<
  "Aide pour " << commName << " :\n\n\
Commandes : " << commName << " [-h | --help | -v [SYMBOLE] | --verbose [SYMBOLE] | -V | --version] \n\n\
-h --help\t\tInformation sur les commandes.\n\n\
-v --verbose\t\tMode bavard pour les essais. Ajouter une valeur \
SYMBOLE affiche le symbole correspondant.\n\n\
-V --version\t\tValeur de version.\n\n\
SYMBOLE\t\tUne des valeurs de 1 à 6 pour les 6 lettres de WeBash \
ou 0 pour le logo initial ou encore N pour une fenêtre sans croisillon.\n";
}
void essai(int argc, char **argv)
{
  std::cout << "=================\n===== Tests =====\n=================" << "\n";
  std::cout << "Hello C++ world !\n";
  std::cout << "Name : " << argv[0] << "\n";
  std::cout << "Arg. count : " << argc << "\n";
  std::cout << "Argument : ";
  if(argc <= 1)
  {
    std::cout << "Null";
  }
  else
  {
    std::cout << argv[argc-1];
  }
  std::cout << "\n";
  auto argument = std::string(argv[argc-1]);
  /* Pour vérifier les caractères, ajouter un numéro de 1 à 6.
    * La lettre 'N' correspond à une fenêtre vide, le chiffre '0'
    * au logo de WeBash.
    */
  std::cout << "==== Symboles ===" << "\n";
  for(auto i=0; i<8; i++)
  {
    if(argument==SYMBOLES[i])
    {
      for(auto& s : LOGOS[i])
      {
        std::cout << s;
      }
    }
  }
  std::cout << "\n";
  std::cout << "=================\n=================\n=================" << "\n";
}
void logoAnimation(void)
{
  const char *titre = "\x1b[4;31;40mWeBash\x1b[0;31;40m CLI logo\x1b[0m";
  /* La fenêtre vide. */
  std::cout << "\x1b[0J" << "\n";
  std::cout << titre << "\n";
  for(auto& s: LOGOS[0])
  {
    std::cout << s;
  }
  std::cout << "\n";
  usleep(TEMPS_L);
  /* La fenêtre avec un croisillon. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto& s: LOGOS[1])
  {
    std::cout << s;
  }
  std::cout <<  std::endl;
  usleep(TEMPS_L);
  /* Calque de la lettre 'W'. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << LOGO0[i] << "\x1b[1A\x1b[40C" << LOGO1[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[18C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[62D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 'e'. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << LOGO0[i] << "\x1b[1A\x1b[40C" << LOGO2[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[26C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[70D";
  std::cout <<  std::endl;
  usleep(TEMPS_L);
  /* Calque de la lettre 'B'. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << LOGO0[i];
    std::cout << "\x1b[1A\x1b[65C" << LOGO3[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[34C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[78D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 'a'. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << LOGO0[i];
    std::cout << "\x1b[1A\x1b[73C" << LOGO4[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[41C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[85D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 's'. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << LOGO0[i];
    std::cout << "\x1b[1A\x1b[79C" << LOGO5[i];
  }
  std::cout << "\x1b[4A\x1b[39C" << "\x1b[0K\x1b[46C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[90D";
  std::cout <<  std::endl;
  usleep(TEMPS_C);
  /* Calque de la lettre 'h'. */
  std::cout << "\x1b[22A\x1b[0K" << "\n";
  std::cout << titre << "\n";
  for(auto i=0;i<LOGO_LIGNES;i++)
  {
    std::cout << LOGO0[i];
    std::cout << "\x1b[1A\x1b[84C" << LOGO6[i];
  }
  std::cout << "\x1b[4A\x1b[38C" << "\x1b[0K\x1b[52C\x1b[5;39;40m######\x1b[0;0;0m" << "\x1b[4B\x1b[95D";
  std::cout <<  std::endl;
  usleep(TEMPS_L);
  /* Curseur clignotant effacé. */
  std::cout << "\x1b[5A\x1b[38C" << "\x1b[0K" << "\x1b[4B\x1b[95D" << "\n";
  /* Signature finale. */
  std::cout << "\t\x1b[1A\x1b[1;31;40m";
  std::cout << "\x1b[5;31;40m_\x1b[0m" << "\n";
  usleep(TEMPS_L);
  const auto signature = std::string("By Alnotz ;-)");
  for(auto n=0;n<14;n++)
  {
    usleep(TEMPS_TC);
    std::cout << "\t\x1b[1A\x1b[1D\x1b[" << n+1 << "C\x1b[1;31;40m";
    std::cout << signature[n] << "\x1b[5;31;40m_\x1b[0m" << "\n";
  }
}
/* Fonction principale. */
int main(int argc, char **argv)
{
  /* Suite d'essais si "--verbose" ou "-v" en premier argument. */
  /* Affiche d'aide si "--help" ou "-h" en premier argument. */
  if(argc > 1)
  {
    if((std::string(argv[1])=="-h") | (std::string(argv[1])=="--help"))
    {
      help_info(argv[0]);
    }
    else if((std::string(argv[1])=="-v") | (std::string(argv[1])=="--verbose"))
    {
      essai(argc, argv);
    }
    else if((std::string(argv[1])=="-V") | (std::string(argv[1])=="--version"))
    {
      std::cout << LOGO_VERSION << std::endl;
    }
    else
    {
      std::cerr << argv[0] << " : Mauvaise commande. Taper \'";
      std::cerr << argv[0] << " -h\' pour l'aide." << std::endl;
      std::exit(EXIT_FAILURE);
    }
  }
  else//Le cas normal où WeBash est animé.
  {
    std::cerr << "\x07";
    logoAnimation();
  }
  return EXIT_SUCCESS;
}
