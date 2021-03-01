version 1.0

task MapDIA {
  input {
    String? var_input
    String? parameter
    File? var_file
  }
  command <<<
    mapDIA \
      ~{var_input} \
      ~{parameter} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_input: ""
    parameter: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}