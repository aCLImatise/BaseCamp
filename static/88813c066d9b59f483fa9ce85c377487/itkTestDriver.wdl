version 1.0

task ItkTestDriver {
  input {
    String prg
    String? args
  }
  command <<<
    itkTestDriver \
      ~{prg} \
      ~{args}
  >>>
  parameter_meta {
    prg: ""
    args: ""
  }
}