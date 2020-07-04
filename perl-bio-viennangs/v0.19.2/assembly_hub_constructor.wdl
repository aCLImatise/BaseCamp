version 1.0

task AssemblyHubConstructor.pl {
  input {
    Boolean? fa
    Boolean? in_folder
    Boolean? out
    Boolean? baseurl
    Boolean? bigwigs
    Boolean? man
  }
  command <<<
    assembly_hub_constructor.pl \
      ~{true="--fa" false="" fa} \
      ~{true="--infolder" false="" in_folder} \
      ~{true="--out" false="" out} \
      ~{true="--baseurl" false="" baseurl} \
      ~{true="--bigwigs" false="" bigwigs} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    fa: "Input file in Fasta format."
    in_folder: "Directory which contains all track files in BED/bigBed format. The resulting Assembly Hub will contain these files in their respective bigFile version."
    out: "Destination folder for the output Assembly Hub."
    baseurl: "BaseURL used within the Assembly Hub. This URL will be included verbatim in the resulting Assembly Hub. It is crucial that this URl is valid, else the resulting Assembly Hub will be broken."
    bigwigs: "URLs pointing to big wig files to be included in the trackhub. Multiple URLs are separated by the star character #. It is possible to create a multiwig container by providing 2 URLs instead of one separated by comma character ,. E.g. http://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw yields a multi big wig container displaying bar as positive reads in green and bar2 as negative 3 red colored reads in the same track and additionally bar3 in an own track colored blue."
    man: "Prints the manual page and exits."
  }
}