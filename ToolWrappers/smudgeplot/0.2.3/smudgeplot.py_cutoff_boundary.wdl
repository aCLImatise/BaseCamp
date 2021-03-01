version 1.0

task SmudgeplotpyCutoffBoundary {
  input {
    String smudge_plot
    String cut_off
    String in_file
    String boundary
  }
  command <<<
    smudgeplot_py cutoff boundary \
      ~{smudge_plot} \
      ~{cut_off} \
      ~{in_file} \
      ~{boundary}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    smudge_plot: ""
    cut_off: ""
    in_file: ""
    boundary: ""
  }
  output {
    File out_stdout = stdout()
  }
}