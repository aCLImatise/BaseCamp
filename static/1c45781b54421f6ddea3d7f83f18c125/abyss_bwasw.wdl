version 1.0

task AbyssBwasw {
  input {
    String? option
  }
  command <<<
    abyss-bwasw \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}