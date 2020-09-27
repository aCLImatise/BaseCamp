version 1.0

task MapDIA {
  input {
    String? var_input
    String? parameter
    File? file
  }
  command <<<
    mapDIA \
      ~{var_input} \
      ~{parameter} \
      ~{file}
  >>>
  parameter_meta {
    var_input: ""
    parameter: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}