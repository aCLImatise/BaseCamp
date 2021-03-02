version 1.0

task MethylpyLevel {
  input {
    String methyl_py
  }
  command <<<
    methylpy level \
      ~{methyl_py}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    methyl_py: ""
  }
  output {
    File out_stdout = stdout()
  }
}