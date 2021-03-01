version 1.0

task TutorialPipeline03pl {
  input {
    Directory? out
    Boolean? baseurl
    Boolean? big_beds
    Boolean? bigwigs
    Boolean? man
    Boolean? i
    File? path
    String? url
  }
  command <<<
    Tutorial_pipeline03_pl \
      ~{path} \
      ~{url} \
      ~{if (out) then "--out" else ""} \
      ~{if (baseurl) then "--baseurl" else ""} \
      ~{if (big_beds) then "--bigbeds" else ""} \
      ~{if (bigwigs) then "--bigwigs" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (i) then "-I" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Destination folder for the output Track Hub."
    baseurl: "BaseURL used within the Track Hub. This URL will be included\\nverbatim in the resulting Track Hub. It is crucial that this URl is\\nvalid, else the resulting Track Hub will be broken."
    big_beds: "URLs pointing to big bed files to be included in the trackhub.\\nMultiple URLs are separated by the character #."
    bigwigs: "URLs pointing to big wig files to be included in the trackhub.\\nMultiple URLs are separated by the character #. It is possible to\\ncreate a multiwig container by providing 2 URLs instead of one\\nseparated by comma character ,. E.g.\\nhttp://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw\\nyields a multi big wig container displaying bar as positive reads in\\ngreen and bar2 as negative 3 red colored reads in the same track and\\nadditionally bar3 in an own track colored blue."
    man: "Prints the manual page and exits\\n"
    i: ""
    path: ""
    url: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}