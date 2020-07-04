version 1.0

task AbyssDidaOPTION {
  input {
    String readlink
    String? option
  }
  command <<<
    abyss-dida OPTION \
      ~{readlink} \
      ~{option}
  >>>
  parameter_meta {
    readlink: ""
    option: ""
  }
}