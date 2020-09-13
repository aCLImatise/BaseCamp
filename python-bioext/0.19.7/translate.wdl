version 1.0

task Translate {
  input {
    String? f
    String? var_input
    String? var_output
  }
  command <<<
    translate \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}