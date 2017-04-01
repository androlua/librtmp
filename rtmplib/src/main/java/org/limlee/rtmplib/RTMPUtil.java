package org.limlee.rtmplib;


public class RTMPUtil {

    private RTMPUtil() {

    }

    static {
        System.loadLibrary("rtmp");
    }

    private native int open(String url);

    private native int close();

    private native int isConnected();

    private native int writeFlvFrame(byte[] framebuffer, int size);

}
