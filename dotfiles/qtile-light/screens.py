from libqtile.config import Screen

from bars import main_bar, main_bar2

main_screen = Screen(top=main_bar,
  wallpaper="./Nextcloud/autic.jpg",
  wallpaper_mode="fill")  # Options: 'fill', 'stretch', 'center'
main_screen2 = Screen(top=main_bar2)

screens = [main_screen, main_screen2]
