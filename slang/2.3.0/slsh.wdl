version 1.0

task Slsh {
  input {
    File file
    String not
    String found
  }
  command <<<
    slsh \
      ~{file} \
      ~{not} \
      ~{found}
  >>>
  parameter_meta {
    file: ""
    not: ""
    found: ""
  }
}