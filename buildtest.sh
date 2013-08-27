
ANDROID_ROOT_DIR="/scratch/workareas/android"
FFMPEG4ANDROID_ROOT_DIR="/scratch/workareas/ffmpeg4android"



for ffmpegdir in `find $ANDROID_ROOT_DIR/external/ffmpeg*.android -maxdepth 0 | sort -rV`
do
    rm $ffmpegdir
done


cd $FFMPEG4ANDROID_ROOT_DIR
FFMPEG_DIRS=`find ffmpeg*.android -maxdepth 0 | sort -rV`


cd $ANDROID_ROOT_DIR
for ffmpegdir in $FFMPEG_DIRS
do
    ln -s $FFMPEG4ANDROID_ROOT_DIR/$ffmpegdir $ANDROID_ROOT_DIR/external/
    rm -rf $ANDROID_ROOT_DIR/external/$ffmpegdir/android
    . build/envsetup.sh;
    lunch full-eng; mmm $ANDROID_ROOT_DIR/external/$ffmpegdir -Bj24;
    lunch full_mips-eng; mmm $ANDROID_ROOT_DIR/external/$ffmpegdir -Bj24;
    lunch full_x86-eng; mmm $ANDROID_ROOT_DIR/external/$ffmpegdir -Bj24;
    rm $ANDROID_ROOT_DIR/external/$ffmpegdir
done
