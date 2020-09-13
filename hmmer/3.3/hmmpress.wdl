version 1.0

task Hmmpress {
  input {
    Boolean? force_overwrite_files
    Boolean? options
  }
  command <<<
    hmmpress \
      ~{if (force_overwrite_files) then "-f" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    force_overwrite_files: ": force: overwrite any previous pressed files"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}