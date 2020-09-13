version 1.0

task Versions {
  input {
    String target
  }
  command <<<
    versions \
      ~{target}
  >>>
  parameter_meta {
    target: "Target output file for version numbers"
  }
  output {
    File out_stdout = stdout()
  }
}