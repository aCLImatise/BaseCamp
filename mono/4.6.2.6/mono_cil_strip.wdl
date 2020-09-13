version 1.0

task Monocilstrip {
  input {
    File file
    String? var_output
  }
  command <<<
    mono_cil_strip \
      ~{file} \
      ~{var_output}
  >>>
  parameter_meta {
    file: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}