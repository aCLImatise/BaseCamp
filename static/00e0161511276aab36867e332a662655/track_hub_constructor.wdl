version 1.0

task TrackHubConstructor.pl {
  input {
    Boolean giGi
    Boolean inInFolder
    Boolean outOut
    Boolean baseurlBaseurl
    Boolean bigBigBeds
    Boolean bigwigsBigwigs
    Boolean manMan
  }
  command <<<
    track_hub_constructor.pl \
      ~{true="--gi" false="" giGi} \
      ~{true="--infolder" false="" inInFolder} \
      ~{true="--out" false="" outOut} \
      ~{true="--baseurl" false="" baseurlBaseurl} \
      ~{true="--bigbeds" false="" bigBigBeds} \
      ~{true="--bigwigs" false="" bigwigsBigwigs} \
      ~{true="--man" false="" manMan}
  >>>
}