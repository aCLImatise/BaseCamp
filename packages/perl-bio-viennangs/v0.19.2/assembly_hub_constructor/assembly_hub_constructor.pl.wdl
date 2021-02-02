version 1.0

task AssemblyHubConstructorpl {
  input {
    Boolean? fa
    Boolean? in_folder
    Directory? out
    Boolean? baseurl
    Boolean? bigwigs
    Boolean? man
    Boolean? url
  }
  command <<<
    assembly_hub_constructor_pl \
      ~{if (fa) then "--fa" else ""} \
      ~{if (in_folder) then "--infolder" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (baseurl) then "--baseurl" else ""} \
      ~{if (bigwigs) then "--bigwigs" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (url) then "-URL" else ""}
  >>>
  parameter_meta {
    fa: "Input file in Fasta format."
    in_folder: "Directory which contains all track files in BED/bigBed format. The\\nresulting Assembly Hub will contain these files in their respective\\nbigFile version."
    out: "Destination folder for the output Assembly Hub."
    baseurl: "BaseURL used within the Assembly Hub. This URL will be included\\nverbatim in the resulting Assembly Hub. It is crucial that this URl\\nis valid, else the resulting Assembly Hub will be broken."
    bigwigs: "URLs pointing to big wig files to be included in the trackhub.\\nMultiple URLs are separated by the star character #. It is possible\\nto create a multiwig container by providing 2 URLs instead of one\\nseparated by comma character ,. E.g.\\nhttp://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw\\nyields a multi big wig container displaying bar as positive reads in\\ngreen and bar2 as negative 3 red colored reads in the same track and\\nadditionally bar3 in an own track colored blue."
    man: "Prints the manual page and exits.\\n"
    url: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}