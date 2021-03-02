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
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    url: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}