version 1.0

task TOBIASLog2Table {
  input {
    Boolean? log_files
    Directory? outdir
    Boolean? prefix
  }
  command <<<
    TOBIAS Log2Table \
      ~{if (log_files) then "--logfiles" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (prefix) then "--prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_files: "[ [ ...]]  Logfiles from PlotAggregate"
    outdir: "Output directory for tables (default: current dir)"
    prefix: "Prefix of output files"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}