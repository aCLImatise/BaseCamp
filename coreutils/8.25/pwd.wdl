version 1.0

task Pwd {
  input {
    Boolean? logical
    Boolean? physical
    String? option
  }
  command <<<
    pwd \
      ~{option} \
      ~{true="--logical" false="" logical} \
      ~{true="--physical" false="" physical}
  >>>
  parameter_meta {
    logical: "use PWD from environment, even if it contains symlinks"
    physical: "avoid all symlinks"
    option: ""
  }
}