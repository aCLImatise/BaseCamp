version 1.0

task TrackHubConstructor.pl {
  input {
    Boolean? gi
    Boolean? in_folder
    Boolean? out
    Boolean? baseurl
    Boolean? big_beds
    Boolean? bigwigs
    Boolean? man
  }
  command <<<
    track_hub_constructor.pl \
      ~{true="--gi" false="" gi} \
      ~{true="--infolder" false="" in_folder} \
      ~{true="--out" false="" out} \
      ~{true="--baseurl" false="" baseurl} \
      ~{true="--bigbeds" false="" big_beds} \
      ~{true="--bigwigs" false="" bigwigs} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    gi: "Genome id as used in UCSC assembly hub. Must be correct, otherwise the annotation cannot be mapped on the genome."
    in_folder: "Directory which contains all track files in BED/bigBed format. The resulting Track Hub will contain these files in their respective bigFile version."
    out: "Destination folder for the output Track Hub."
    baseurl: "BaseURL used within the Track Hub. This URL will be included verbatim in the resulting Track Hub. It is crucial that this URl is valid, else the resulting Track Hub will be broken."
    big_beds: "URLs pointing to big bed files to be included in the trackhub. Multiple URLs are separated by the character #."
    bigwigs: "URLs pointing to big wig files to be included in the trackhub. Multiple URLs are separated by the star character #. It is possible to create a multiwig container by providing 2 URLs instead of one separated by comma character ,. E.g. http://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw yields a multi big wig container displaying bar as positive reads in green and bar2 as negative 3 red colored reads in the same track and additionally bar3 in an own track colored blue."
    man: "Prints the manual page and exits."
  }
}