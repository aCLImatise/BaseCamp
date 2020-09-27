version 1.0

task SmudgeplotpyCutoffInfile {
  input {
    String boundary
  }
  command <<<
    smudgeplot_py cutoff infile \
      ~{boundary}
  >>>
  parameter_meta {
    boundary: ""
  }
  output {
    File out_stdout = stdout()
  }
}