version 1.0

task Seqstat {
  input {
    Boolean? report_persequence_info
    Boolean? gc_comp
    String? in_format
    Boolean? quiet
    Boolean? options
    String seq_file
  }
  command <<<
    seqstat \
      ~{seq_file} \
      ~{true="-a" false="" report_persequence_info} \
      ~{true="--gccomp" false="" gc_comp} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    report_persequence_info: ": report per-sequence info, not just a summary"
    gc_comp: ": with -a, include GC composition in report (DNA/RNA only)"
    in_format: ": specify sequence file format <s>"
    quiet: ": suppress verbose header (used in regression testing)"
    options: ""
    seq_file: ""
  }
}