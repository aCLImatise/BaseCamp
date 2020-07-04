version 1.0

task TutorialPipeline03.pl {
  input {
    Boolean? out
    Boolean? baseurl
    Boolean? big_beds
    Boolean? bigwigs
    Boolean? man
    Boolean? i
    File? path
    String? url
  }
  command <<<
    Tutorial_pipeline03.pl \
      ~{path} \
      ~{url} \
      ~{true="--out" false="" out} \
      ~{true="--baseurl" false="" baseurl} \
      ~{true="--bigbeds" false="" big_beds} \
      ~{true="--bigwigs" false="" bigwigs} \
      ~{true="--man" false="" man} \
      ~{true="-I" false="" i}
  >>>
  parameter_meta {
    out: "Destination folder for the output Track Hub."
    baseurl: "BaseURL used within the Track Hub. This URL will be included verbatim in the resulting Track Hub. It is crucial that this URl is valid, else the resulting Track Hub will be broken."
    big_beds: "URLs pointing to big bed files to be included in the trackhub. Multiple URLs are separated by the character #."
    bigwigs: "URLs pointing to big wig files to be included in the trackhub. Multiple URLs are separated by the character #. It is possible to create a multiwig container by providing 2 URLs instead of one separated by comma character ,. E.g. http://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw yields a multi big wig container displaying bar as positive reads in green and bar2 as negative 3 red colored reads in the same track and additionally bar3 in an own track colored blue."
    man: "Prints the manual page and exits"
    i: ""
    path: ""
    url: ""
  }
}