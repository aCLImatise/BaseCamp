version 1.0

task Seqstat {
  input {
    Boolean? report_info_just
    Boolean? gc_comp
    File? in_format
    Boolean? quiet
    Boolean? options
    String seq_file
  }
  command <<<
    seqstat \
      ~{seq_file} \
      ~{if (report_info_just) then "-a" else ""} \
      ~{if (gc_comp) then "--gccomp" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    report_info_just: ": report per-sequence info, not just a summary"
    gc_comp: ": with -a, include GC composition in report (DNA/RNA only)"
    in_format: ": specify sequence file format <s>"
    quiet: ": suppress verbose header (used in regression testing)"
    options: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}