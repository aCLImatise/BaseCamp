version 1.0

task PlotQualitiespyInputFastx {
  input {
    String? r
    String? w
  }
  command <<<
    plot_qualities_py input_fastx \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    r: ""
    w: ""
  }
  output {
    File out_stdout = stdout()
  }
}