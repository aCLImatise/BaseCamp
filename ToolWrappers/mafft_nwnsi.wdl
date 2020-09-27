version 1.0

task Mafftnwnsi {
  input {
    Boolean? op
    Boolean? ep
    Boolean? max_iterate
    Boolean? clustal_out
    Boolean? reorder
    Boolean? quiet
    Boolean? thread
    Boolean? dash
  }
  command <<<
    mafft_nwnsi \
      ~{if (op) then "--op" else ""} \
      ~{if (ep) then "--ep" else ""} \
      ~{if (max_iterate) then "--maxiterate" else ""} \
      ~{if (clustal_out) then "--clustalout" else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (dash) then "--dash" else ""}
  >>>
  parameter_meta {
    op: "# :         Gap opening penalty, default: 1.53"
    ep: "# :         Offset (works like gap extension penalty), default: 0.0"
    max_iterate: "# : Maximum number of iterative refinement, default: 0"
    clustal_out: ":   Output: clustal format, default: fasta"
    reorder: ":      Outorder: aligned, default: input order"
    quiet: ":        Do not report progress"
    thread: "# :     Number of threads (if unsure, --thread -1)"
    dash: ":         Add structural information (Rozewicki et al, submitted)"
  }
  output {
    File out_stdout = stdout()
  }
}