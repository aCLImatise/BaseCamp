version 1.0

task Hmmpress {
  input {
    Boolean? force_overwrite_files
    Boolean? options
  }
  command <<<
    hmmpress \
      ~{true="-f" false="" force_overwrite_files} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    force_overwrite_files: ": force: overwrite any previous pressed files"
    options: ""
  }
}