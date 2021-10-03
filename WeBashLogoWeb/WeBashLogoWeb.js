/* JS de WeBash. */
var sortie = document.getElementById("terminal");
sortieInit = sortie.innerHTML;//Entrée initiale sauvée.
const TEMPS_L = 500;//Temps long.
const TEMPS_C = 250;//Temps court.
/* Sortie pour la console. */
function sortie_log(sortie)
{
  log_format_begin = "color: red; font-style: italic; background-color: default;padding: 2px";
  warn_format_begin = "color: yellow; font-style: italic; background-color: default;padding: 2px";
  log_format_end = "color: default; font-style: default; background-color: default;padding: default";
  if((typeof sortie) !== 'string')
  {
    console.warn("%cAttention ! :%c\n%s", log_format_begin, log_format_end,
      "sortie_log : l'argument n'est pas une chaîne.");
    exit;
  }
  console.log("%cSortie :%c\n%s", log_format_begin, log_format_end, sortie);
}
/* La collection de symboles et caractères en art ASCII. */
var logo0 = ["",//ligne 0
  "   _______________________________    ",
  "  /._____________________. ._. ._.\\  ",
  " / |_____________________| |_| |_| \\ ",
  "/___________________________________\\",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "|                                   | ",
  "\\   </pre><pre class=\"red blink\">#############################</pre><pre>   /",
  " \\_________________________________/ ",
  ""];// ligne 20
var logo1 = ["",
  "   _______________________________    ",
  "  /._____________________. ._. ._.\\  ",
  " / |_____________________| |_| |_| \\ ",
  "/___________________________________\\",
  "|                                   | ",
  "|</pre><pre class=\"red\">               _____     _____     </pre><pre>| ",
  "|</pre><pre class=\"red\">              /    /    /    /     </pre><pre>| ",
  "|</pre><pre class=\"red\">        _____/    /____/    /____  </pre><pre>| ",
  "|</pre><pre class=\"red\">       /                        /  </pre><pre>| ",
  "|</pre><pre class=\"red\">      /____     _____     _____/   </pre><pre>| ",
  "|</pre><pre class=\"red\">          /    /    /    /         </pre><pre>| ",
  "|</pre><pre class=\"red\">    _____/    /____/    /____      </pre><pre>| ",
  "|</pre><pre class=\"red\">   /                        /      </pre><pre>| ",
  "|</pre><pre class=\"red\">  /____     _____     _____/       </pre><pre>| ",
  "|</pre><pre class=\"red\">      /    /    /    /             </pre><pre>| ",
  "|</pre><pre class=\"red\">     /____/    /____/              </pre><pre>| ",
  "|                                   | ",
  "\\                                   /",
  " \\_________________________________/ ",
  ""];
var logo2 = ["",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "__          __    __",
  "\\ \\        / /   / /",
  " \\ \\      / /   / / ",
  "  \\ \\    / /   / /  ",
  "   \\ \\  / /\\  / /   ",
  "    \\ \\/ /\\ \\/ /    ",
  "     \\_\\/  \\_\\/     ",
  "",
  "",
  "",
  "",
  "",
  ""];
var logo3 = ["",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "__          __    __    ",
  "\\ \\        / /   / /    ",
  " \\ \\      / /   / /     ",
  "  \\ \\    / /   / / ___  ",
  "   \\ \\  / /\\  / / /___\\ ",
  "    \\ \\/ /\\ \\/ /  |     ",
  "     \\_\\/  \\_\\/   \\___/ ",
  "",
  "",
  "",
  "",
  "",
  ""];
var logo4 = ["",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  " _ ___  ",
  "| |  \\\\ ",
  "| |  || ",
  "| |__// ",
  "| |  \\\\ ",
  "| |  || ",
  "|_|__// ",
  "",
  "",
  "",
  "",
  "",
  ""];
var logo5 = ["",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "      ",
  "      ",
  "      ",
  " ___  ",
  " ___\\ ",
  "/   | ",
  "\\___| ",
  "",
  "",
  "",
  "",
  "",
  ""];
var logo6 = ["",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "     ",
  "     ",
  "     ",
  " ___ ",
  "/    ",
  "`--, ",
  "___/ ",
  "",
  "",
  "",
  "",
  "",
  ""];
var logo7 = ["",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "     ",
  "     ",
  "|    ",
  "|__  ",
  "|  \\ ",
  "|  | ",
  "|  | ",
  "",
  "",
  "",
  "",
  "",
  ""];
/* Liste des différents états du curseur clignotant. */
var curseur1 = ["","","","","","","","","","","","","","","","",
  " \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
var curseur2 = ["","","","","","","","","","","","","","","","",
  "              \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
var curseur3 = ["","","","","","","","","","","","","","","","",
  "                      \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
var curseur4 = ["","","","","","","","","","","","","","","","",
  "                             \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
var curseur5 = ["","","","","","","","","","","","","","","","",
  "                                    \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
var curseur6 = ["","","","","","","","","","","","","","","","",
  "                                         \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
var curseur7 = ["","","","","","","","","","","","","","","","",
  "                                              \
  </pre><pre class=\"blink\">######</pre><pre>\n",
  "","","",""];
/* Pour l'effet clignotant du curseur. */
/* Changement de style CSS pour clignoter. */
/* CASSÉ!
 * DÉBUT *
allume = true;//Curseur visible.

function clignotant()
{
  var elemCligno = document.getElementsByClassName('cligno');
  if(allume)//Si visible.
  {
    textColor = 'opacity:0;';
    a = "Oui";
  }
  else//Si caché.
  {
    textColor = 'opacity:1;';
    a = "Non";
  }
  for(let i=0; i<elemCligno.lenght; i++)
  {
    elem = elemCligno[i];
    elem.setAttribute('style', textColor);//Nouvelle couleur.
    console.log("%cVisibilité%c\n%s", log_format_begin, log_format_end, a);
    allume = !allume;//État alterné.
  }
}
window.setInterval(clignotant, 250);//Alternance d'état tous les 1/4 de seconde.
 * FIN */
/* La fenêtre sans croisillon. */
function sortieAffiche0()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    /* Mieux vaut concaténer qu'user l'opératuer '+' surchargé. */
    sGroupe = sGroupe.concat(logo0[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* La fenêtre avec croisillon. */
function sortieAffiche1()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]);
    sGroupe = sGroupe.concat(curseur1[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Ajout de 'W'. */
function sortieAffiche2()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo2[i]);
    sGroupe = sGroupe.concat(curseur2[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Ajout de 'e'. */
function sortieAffiche3()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo3[i]);
    sGroupe = sGroupe.concat(curseur3[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Ajout de 'B'. */
function sortieAffiche4()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo3[i]+logo4[i]);
    sGroupe = sGroupe.concat(curseur4[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Ajout de 'a'. */
function sortieAffiche5()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo3[i]);
    sGroupe = sGroupe.concat(logo4[i]+logo5[i]);
    sGroupe = sGroupe.concat(curseur5[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Ajout de 's'. */
function sortieAffiche6()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo3[i]);
    sGroupe = sGroupe.concat(logo4[i]+logo5[i]+logo6[i]);
    sGroupe = sGroupe.concat(curseur6[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Ajout de 'h'. */
function sortieAffiche7()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo3[i]);
    sGroupe = sGroupe.concat(logo4[i]+logo5[i]);
    sGroupe = sGroupe.concat(logo6[i]+logo7[i]);
    sGroupe = sGroupe.concat(curseur7[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
}
/* Suppression du curseur. */
function sortieAffiche8()
{
  sGroupe = "";
  sGroupe = sGroupe.concat("<pre>"+"\n");
  for(let i=0;i<logo0.length;i++)
  {
    sGroupe = sGroupe.concat(logo1[i]+logo3[i]);
    sGroupe = sGroupe.concat(logo4[i]+logo5[i]);
    sGroupe = sGroupe.concat(logo6[i]+logo7[i]+"\n");
  }
  sGroupe = sGroupe.concat("</pre>"+"\n");
  sortie.innerHTML = sortieInit + sGroupe ;
  sortie_log(sortie.innerHTML);
  sortie_log("Fini !");
}
/* Suite de séquences d'affichage.
 * On contrôle les temps absolus entre les calques.
 */
function webashBoot()
{
  
  window.setTimeout(sortieAffiche0, TEMPS_L);
  window.setTimeout(sortieAffiche1, 2*TEMPS_L);
  window.setTimeout(sortieAffiche2, 4*TEMPS_L);
  window.setTimeout(sortieAffiche3, 4*TEMPS_L + TEMPS_C);
  window.setTimeout(sortieAffiche4, 5*TEMPS_L + 2*TEMPS_C);
  window.setTimeout(sortieAffiche5, 5*TEMPS_L + 3*TEMPS_C);
  window.setTimeout(sortieAffiche6, 5*TEMPS_L + 4*TEMPS_C);
  window.setTimeout(sortieAffiche7, 5*TEMPS_L + 5*TEMPS_C);
  window.setTimeout(sortieAffiche8, 10*TEMPS_L + 5*TEMPS_C);
}
/* Le logo de WeBash commence à partir du bouton BOOT. */
boutton = document.getElementById('boot');
function auBoulot()
{
  boutton.disabled = true;
  webashBoot();
  boutton.innerText = "RE-".concat(boutton.innerText);
  window.setTimeout(()=>{boutton.disabled = false;}, 10*TEMPS_L + 5*TEMPS_C);
}
boutton.addEventListener('click', auBoulot);
