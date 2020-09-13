version 1.0

task Fetchprokssh {
  input {
    String url
    String outfile
  }
  command <<<
    fetchproks_sh \
      ~{url} \
      ~{outfile}
  >>>
  parameter_meta {
    url: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}