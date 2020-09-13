version 1.0

task TracyAssemble {
  input {
    Boolean? arg_referenceguided_assembly
    Boolean? arg_peak_ratio
    Boolean? t
    Boolean? f
    Boolean? arg_gap_open
    Boolean? arg_gap_extension
    Boolean? _arg_match
    Boolean? _arg_mismatch
    Boolean? arg_fraction_traces
    Boolean? arg_output_prefix
    Boolean? include_consensus_align
    String generic
  }
  command <<<
    tracy assemble \
      ~{generic} \
      ~{if (arg_referenceguided_assembly) then "-r" else ""} \
      ~{if (arg_peak_ratio) then "-p" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (arg_gap_open) then "-g" else ""} \
      ~{if (arg_gap_extension) then "-e" else ""} \
      ~{if (_arg_match) then "-m" else ""} \
      ~{if (_arg_mismatch) then "-n" else ""} \
      ~{if (arg_fraction_traces) then "-d" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (include_consensus_align) then "-i" else ""}
  >>>
  parameter_meta {
    arg_referenceguided_assembly: "[ --reference ] arg              reference-guided assembly (optional)"
    arg_peak_ratio: "[ --pratio ] arg (=0.330000013)  peak ratio to call base"
    t: "[ --trim ] arg (=4)              trimming stringency [1:9]"
    f: "[ --fracmatch ] arg (=0.5)       min. fraction of matches [0:1]"
    arg_gap_open: "[ --gapopen ] arg (=-10)         gap open"
    arg_gap_extension: "[ --gapext ] arg (=-4)           gap extension"
    _arg_match: "[ --match ] arg (=3)             match"
    _arg_mismatch: "[ --mismatch ] arg (=-5)         mismatch"
    arg_fraction_traces: "[ --called ] arg (=0.100000001)  fraction of traces required for consensus"
    arg_output_prefix: "[ --outprefix ] arg (=out)       output prefix"
    include_consensus_align: "[ --inccons ]                    include consensus in FASTA align"
    generic: ""
  }
  output {
    File out_stdout = stdout()
  }
}