version 1.0

task Monocilstrip {
  input {
    File var_file
    String? var_output
  }
  command <<<
    mono_cil_strip \
      ~{var_file} \
      ~{var_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}