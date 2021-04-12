version 1.0

task CoolerMakebins {
  input {
    File? out
    Boolean? header
    Boolean? rel_ids
    String order_dot
  }
  command <<<
    cooler makebins \
      ~{order_dot} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (rel_ids) then "--rel-ids" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0"
  }
  parameter_meta {
    out: "Output file (defaults to stdout)"
    header: "Print the header of column names as the first row.\\n[default: False]"
    rel_ids: "[0|1]  Include a column of relative bin IDs for each\\nchromosome. Choose whether to report them as 0- or\\n1-based."
    order_dot: "BINSIZE : Resolution (bin size) in base pairs <int>."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}