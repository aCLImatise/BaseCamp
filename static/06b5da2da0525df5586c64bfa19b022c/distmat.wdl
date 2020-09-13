version 1.0

task Distmat {
  input {
    File file
  }
  command <<<
    distmat \
      ~{file}
  >>>
  parameter_meta {
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}