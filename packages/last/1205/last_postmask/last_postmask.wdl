version 1.0

task Lastpostmask {
  input {
    String in_dot_maf
  }
  command <<<
    last_postmask \
      ~{in_dot_maf}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1205--h8b12597_0"
  }
  parameter_meta {
    in_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}