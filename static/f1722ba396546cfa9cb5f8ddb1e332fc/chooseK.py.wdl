version 1.0

task ChooseKpy {
  input {
    File? var_input
    String python
  }
  command <<<
    chooseK_py \
      ~{python} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}