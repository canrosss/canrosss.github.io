 #!/bin/bash
 cd "`dirname "$0"`"
 cd ..

 mkdir -p build
 cd build
 mkdir _resources
 mkdir img
 if [ -d _resources ];then
   cp -r /home/canros/.local/share/zim/templates/html/css _resources
   cp -r /home/canros/.local/share/zim/templates/html/fonts _resources
   cp -r /home/canros/.local/share/zim/templates/html/js _resources
 fi
 if [ -d img ];then
   cp -r ../src/img .
 fi
# [ -e _resources ] && rm -rf *
 cd ..
 zim --export \
   --format=html --overwrite --template=ResponsivePivot \
   --output=./build --index-page=sitemap \
   src/notebook.zim
