version 1.0

task Cmpress {
  input {
    Boolean? force_overwrite_files
    Boolean? options
  }
  command <<<
    cmpress \
      ~{true="-F" false="" force_overwrite_files} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    force_overwrite_files: ": force: overwrite any previous pressed files"
    options: ""
  }
}