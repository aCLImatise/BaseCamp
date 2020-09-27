version 1.0

task ChooseKpy {
  input {
    String python
  }
  command <<<
    chooseK_py \
      ~{python}
  >>>
  parameter_meta {
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}