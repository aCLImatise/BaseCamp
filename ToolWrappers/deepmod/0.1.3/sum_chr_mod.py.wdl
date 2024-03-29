version 1.0

task SumChrModpy {
  input {
    String python
  }
  command <<<
    sum_chr_mod_py \
      ~{python}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}