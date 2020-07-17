version 1.0

task Fetchproks.sh {
  input {
    String url
    String outfile
  }
  command <<<
    fetchproks.sh \
      ~{url} \
      ~{outfile}
  >>>
  parameter_meta {
    url: ""
    outfile: ""
  }
}