version 1.0

task Cmpress {
  input {
    Boolean? force_overwrite_files
    Boolean? options
  }
  command <<<
    cmpress \
      ~{if (force_overwrite_files) then "-F" else ""} \
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