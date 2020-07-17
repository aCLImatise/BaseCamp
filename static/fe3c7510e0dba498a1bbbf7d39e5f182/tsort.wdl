version 1.0

task Tsort {
  input {
    String? option
    File? file
  }
  command <<<
    tsort \
      ~{option} \
      ~{file}
  >>>
  parameter_meta {
    option: ""
    file: ""
  }
}