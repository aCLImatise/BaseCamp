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
    docker: "quay.io/biocontainers/smudgeplot_rn:0.2.4_RN--py39r40h516909a_0"
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