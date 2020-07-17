version 1.0

task Ln {
  input {
    Boolean? no_target_directory
    Boolean? verbose
    String? option
  }
  command <<<
    ln \
      ~{option} \
      ~{true="--no-target-directory" false="" no_target_directory} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    no_target_directory: "treat LINK_NAME as a normal file always"
    verbose: "print name of each linked file"
    option: ""
  }
}