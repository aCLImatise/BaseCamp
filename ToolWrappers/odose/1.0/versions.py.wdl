version 1.0

task Versionspy {
  input {
    String target
  }
  command <<<
    versions_py \
      ~{target}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "Target output file for version numbers"
  }
  output {
    File out_stdout = stdout()
  }
}