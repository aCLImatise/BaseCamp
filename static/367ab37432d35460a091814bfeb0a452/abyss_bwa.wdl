version 1.0

task AbyssBwa {
  input {
    String? option
  }
  command <<<
    abyss-bwa \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}