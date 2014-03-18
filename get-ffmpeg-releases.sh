rm -rf releases

mkdir releases
cd releases

wget --content-disposition "http://git.videolan.org/?p=ffmpeg.git;a=snapshot;h=HEAD;sf=tgz"
wget http://ffmpeg.org/releases/ffmpeg-2.1.4.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-2.0.3.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-1.2.4.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-1.1.7.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-1.0.8.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-0.11.4.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-0.10.10.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-0.9.3.tar.gz
#wget http://ffmpeg.org/releases/ffmpeg-0.8.15.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-0.7.16.tar.gz

cd ..
