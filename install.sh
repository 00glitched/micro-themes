path=$(pwd)
mkdir -p $HOME/.config/micro/colorschemes
cp $path/themes/glitchedGlassCyan.micro $HOME/.config/micro/colorschemes/glitchedGlassCyan.micro 
cp $path/themes/glitchedGlassMagenta.micro $HOME/.config/micro/colorschemes/glitchedGlassMagenta.micro
read -p "Select a color Cyan/Magenta: " color
if [ "$color" = "Cyan" ]; then
  	echo "{\"colorscheme\" : \"glitchedGlassCyan\"}" > $HOME/.config/micro/settings.json
  	echo "Color scheme changed to Cyan."
elif [ "$color" = "Magenta" ]; then
	echo "{\"colorscheme\": \"glitchedGlassMagenta\"}" > $HOME/.config/micro/settings.json
	echo "Color scheme changed to Magenta."
else
	echo "Not valid. You can select manually with 'micro -colorscheme NAME' "
fi
