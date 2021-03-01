version 1.0

task MagpurifyContaminants {
  input {
    String mag_purify
  }
  command <<<
    magpurify contaminants_ \
      ~{mag_purify}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mag_purify: ""
  }
  output {
    File out_stdout = stdout()
  }
}