version 1.0

task ChooseK.py {
  input {
    String python
  }
  command <<<
    chooseK.py \
      ~{python}
  >>>
  parameter_meta {
    python: ""
  }
}