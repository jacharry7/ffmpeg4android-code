rm -rf releases

mkdir releases
cd releases

wget --content-disposition "http://git.videolan.org/?p=ffmpeg.git;a=snapshot;h=HEAD;sf=tgz"
wget http://ffmpeg.org/releases/ffmpeg-2.0.1.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-1.2.3.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-1.1.5.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-1.0.7.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-0.11.3.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-0.10.8.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-0.9.2.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-0.8.14.tar.gz
wget http://ffmpeg.org/releases/ffmpeg-0.7.15.tar.gz

cd ..
