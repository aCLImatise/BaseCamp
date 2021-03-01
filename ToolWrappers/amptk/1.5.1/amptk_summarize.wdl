version 1.0

task AmptkSummarize {
  input {
    Boolean? table
    Boolean? out
    Boolean? counts
    Boolean? graphs
    Boolean? format
    Boolean? percent
    Boolean? font_size
    String arguments
  }
  command <<<
    amptk summarize \
      ~{arguments} \
      ~{if (table) then "--table" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (counts) then "--counts" else ""} \
      ~{if (graphs) then "--graphs" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (font_size) then "--font_size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  parameter_meta {
    table: "OTU Table containing Taxonomy information (Required)"
    out: "Base name for output files. Default: amptk-summary"
    counts: "Method to count taxa. Default: binary [binary,actual]"
    graphs: "Create stacked Bar Graphs."
    format: "Image output format. Default: eps [eps, svg, png, pdf]"
    percent: "Convert numbers to Percent for Graphs. Default: off"
    font_size: "Adjust font size for X-axis sample lables. Default: 8"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}