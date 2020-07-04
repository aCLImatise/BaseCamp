version 1.0

task TOBIASLog2Table {
  input {
    Boolean? log_files
    Boolean? outdir
    Boolean? prefix
  }
  command <<<
    TOBIAS Log2Table \
      ~{true="--logfiles" false="" log_files} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--prefix" false="" prefix}
  >>>
  parameter_meta {
    log_files: "[ [ ...]]  Logfiles from PlotAggregate"
    outdir: "Output directory for tables (default: current dir)"
    prefix: "Prefix of output files"
  }
}