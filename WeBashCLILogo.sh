#!/bin/env bash

####################################
#Logo dynamique de CLI pour WeBash.#
#                                  #
#  Par Alnotz!                     #
#  ===========                     #
#                                  #
#L'idée est de donner l'impression #
# que ce logo est un croisillion   #
# qui sera succédé par une suite de#
# caractères 'WeBash' tapés par un #
# utilisateur.                     #
####################################

#Fonte générale
BORD="\E[0m\E[1;39;40m"
FONT="\E[0m\E[2;91;40m"
INTER="\E[0m\E[1;39;40m"
CLIGNO="\E[5;39;40m"
#Fenêtre sans croisillon.
function logoN ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT    \E[5;31;40m========================================$FONT                $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT   \E[5;31;40m========================================$FONT             $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#Croisillon seul.
function logo0 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "$CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#'W' tapé.
function logo1 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /"
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /"
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /"
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /"
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /"
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "                           $CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#'e' tapé.
function logo2 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /"
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /"
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /"
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /"
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /  "
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /   ___"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /   /   \\"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /   /_____\\"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /    |"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /     \\     /"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/       \\___/"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "                                           $CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#'B' tapé.
function logo3 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /   "\
  "_________________"
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /    "\
  "| |            \\ \\"
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /     "\
  "| |             \\ \\"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /      "\
  "| |             | |"
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /       "\
  "| |             | |"
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /        "\
  "| |             / /"
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /   ___   "\
  "| |____________/_/"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /   /   \\  "\
  "| |            \\ \\"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /   /_____\\ "\
  "| |             \\ \\"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /    |       "\
  "| |             | |"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /     \\     / "\
  "| |             / /"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/       \\___/  "\
  "|_|____________/_/"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "                                                               $CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#'a' tapé.
function logo4 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /   "\
  "_________________    "
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /    "\
  "| |            \\ \\ "
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /     "\
  "| |             \\ \\"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /      "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /       "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /        "\
  "| |             / /  "
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /   ___   "\
  "| |____________/_/     ___"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /   /   \\  "\
  "| |            \\ \\    /   \\"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /   /_____\\ "\
  "| |             \\ \\    ___|"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /    |       "\
  "| |             | |   /   |"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /     \\     / "\
  "| |             / /   |   |"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/       \\___/  "\
  "|_|____________/_/    \\___|"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "                                                                        $CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#'s' tapé.
function logo5 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /   "\
  "_________________    "
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /    "\
  "| |            \\ \\ "
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /     "\
  "| |             \\ \\"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /      "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /       "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /        "\
  "| |             / /  "
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /   ___   "\
  "| |____________/_/     ___    __"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /   /   \\  "\
  "| |            \\ \\    /   \\  /"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /   /_____\\ "\
  "| |             \\ \\    ___|  \\__"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /    |       "\
  "| |             | |   /   |     \\"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /     \\     / "\
  "| |             / /   |   |     |"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/       \\___/  "\
  "|_|____________/_/    \\___|  \\__/"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "                                                                              $CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#'h' tapé.
function logo6 ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /   "\
  "_________________    "
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /    "\
  "| |            \\ \\ "
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /     "\
  "| |             \\ \\"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /      "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /       "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /        "\
  "| |             / /  "
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /   ___   "\
  "| |____________/_/     ___    __   |"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /   /   \\  "\
  "| |            \\ \\    /   \\  /     |"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /   /_____\\ "\
  "| |             \\ \\    ___|  \\__   |___"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /    |       "\
  "| |             | |   /   |     \\  |   \\"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /     \\     / "\
  "| |             / /   |   |     |  |   |"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/       \\___/  "\
  "|_|____________/_/    \\___|  \\__/  |   |"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" "                                                                                    $CLIGNO==================="
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
#Logo complet.
function logoFin ()
{
  echo ""
  echo -e  "\E[0;31;40mCo\E[0;32;40mlou\E[0;33;40mred\E[0;31;40m \E[4;31;40mWeBash\E[0;31;40m CLI logo\E[0m"
  echo -e  "   $BORD""________________________________________________________\E[0m   "
  echo -ne "  $BORD/$INTER.______________________________________________. ._. ._.$BORD"; echo -n "\\"; echo -e "\E[0m  "
  echo -ne " $BORD/$FONT $INTER|$BORD""______________________________________________$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $INTER|$BORD""_$INTER|$FONT $BORD"; echo -n "\\"; echo -e "\E[0m "
  echo -ne "$BORD/$INTER""____________________________________________________________$BORD"; echo -n "\\"; echo -e "\E[0m"
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                            ________        ________        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                           /       /       /       /        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                          /       /       /       /         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                         /       /       /       /          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                ________/       /_______/       /_______    $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT               /                                       /    $BORD|\E[0m" "\\ \\          \\ \\                    / /   "\
  "_________________    "
  echo -e  "$BORD|$FONT              /                                       /     $BORD|\E[0m" " \\ \\          \\ \\                  / /    "\
  "| |            \\ \\ "
  echo -e  "$BORD|$FONT             /                                       /      $BORD|\E[0m" "  \\ \\          \\ \\                / /     "\
  "| |             \\ \\"
  echo -e  "$BORD|$FONT            /_______        ________        ________/       $BORD|\E[0m" "   \\ \\          \\ \\              / /      "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                   /       /       /       /                $BORD|\E[0m" "    \\ \\          \\ \\            / /       "\
  "| |             | |  "
  echo -e  "$BORD|$FONT                  /       /       /       /                 $BORD|\E[0m" "     \\ \\          \\ \\          / /        "\
  "| |             / /  "
  echo -e  "$BORD|$FONT                 /       /       /       /                  $BORD|\E[0m" "      \\ \\        / \\ \\        / /   ___   "\
  "| |____________/_/     ___    __   |"
  echo -e  "$BORD|$FONT        ________/       /_______/       /_______            $BORD|\E[0m" "       \\ \\      / / \\ \\      / /   /   \\  "\
  "| |            \\ \\    /   \\  /     |"
  echo -e  "$BORD|$FONT       /                                       /            $BORD|\E[0m" "        \\ \\    / /   \\ \\    / /   /_____\\ "\
  "| |             \\ \\    ___|  \\__   |___"
  echo -e  "$BORD|$FONT      /                                       /             $BORD|\E[0m" "         \\ \\  / /     \\ \\  / /    |       "\
  "| |             | |   /   |     \\  |   \\"
  echo -e  "$BORD|$FONT     /                                       /              $BORD|\E[0m" "          \\ \\/ /       \\ \\/ /     \\     / "\
  "| |             / /   |   |     |  |   |"
  echo -e  "$BORD|$FONT    /_______        ________        ________/               $BORD|\E[0m" "           \\_\\/         \\_\\/       \\___/  "\
  "|_|____________/_/    \\___|  \\__/  |   |"
  echo -e  "$BORD|$FONT           /       /       /       /                        $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT          /       /       /       /                         $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT         /       /       /       /                          $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT        /_______/       /_______/                           $BORD|\E[0m" ""
  echo -e  "$BORD|$FONT                                                            $BORD|\E[0m" ""
  echo -ne "$BORD"; echo -n "\\"; echo -e "$FONT                                                            $BORD/\E[0m"
  echo -ne " $BORD"; echo -n "\\"; echo -e "$FONT                                                        $FONT  $BORD/\E[0m "
  echo -ne "  $BORD"; echo -n "\\"; echo -e "$INTER""________________________________________________________$BORD/\E[0m  "
  echo ""
  echo -e "     By \E[5;31;40mAlnotz\E[0m ;-)"
}
# Fonction principale.
function main ()
{
  clear
  logoN
  sleep 1.2
  clear
  logo0
  sleep 1.2
  clear
  logo1
  sleep 0.2
  clear
  logo2
  sleep 1.2
  clear
  logo3
  sleep 0.2
  clear
  logo4
  sleep 0.2
  clear
  logo5
  sleep 0.2
  clear
  logo6
  sleep 2
  clear
  logoFin
}
main
