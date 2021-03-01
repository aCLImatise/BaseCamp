version 1.0

task Summarizemergesh {
  input {
    String in
  }
  command <<<
    summarizemerge_sh \
      ~{in}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}