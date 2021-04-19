version 1.0

task MerFigR {
  input {
    Boolean? rds_files_figrdsfigrds
    Boolean? labels
    Boolean? output_files_graph
    Boolean? ncol
    Boolean? base_height
    Boolean? base_aspect_ratio
  }
  command <<<
    mer_fig_R \
      ~{if (rds_files_figrdsfigrds) then "--input" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (output_files_graph) then "--output" else ""} \
      ~{if (ncol) then "--ncol" else ""} \
      ~{if (base_height) then "--base_height" else ""} \
      ~{if (base_aspect_ratio) then "--base_aspect_ratio" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  parameter_meta {
    rds_files_figrdsfigrds: "[required]\\n- RDS files. <fig1.rds,fig2.rds...>"
    labels: "[optional]\\n- Labesl for each figure. Default: <A,B,C,D...>"
    output_files_graph: "[optional]\\n- Output files for the graph. Default: cowplot_mer_fig.pdf"
    ncol: "[optional]\\n- Number of columns on the graph."
    base_height: "[optional]\\n- The height (in inches) of each sub-plot"
    base_aspect_ratio: "[optional]\\n-  The aspect ratio of each sub-plot. Default: 1.6\\n"
  }
  output {
    File out_stdout = stdout()
  }
}