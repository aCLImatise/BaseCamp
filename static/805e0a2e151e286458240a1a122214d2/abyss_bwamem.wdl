version 1.0

task AbyssBwamem {
  input {
    String? option
  }
  command <<<
    abyss-bwamem \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}