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
    Boolean? include_consensus_fasta
    String generic
  }
  command <<<
    tracy assemble \
      ~{generic} \
      ~{true="-r" false="" arg_referenceguided_assembly} \
      ~{true="-p" false="" arg_peak_ratio} \
      ~{true="-t" false="" t} \
      ~{true="-f" false="" f} \
      ~{true="-g" false="" arg_gap_open} \
      ~{true="-e" false="" arg_gap_extension} \
      ~{true="-m" false="" _arg_match} \
      ~{true="-n" false="" _arg_mismatch} \
      ~{true="-d" false="" arg_fraction_traces} \
      ~{true="-o" false="" arg_output_prefix} \
      ~{true="-i" false="" include_consensus_fasta}
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
    include_consensus_fasta: "[ --inccons ]                    include consensus in FASTA align"
    generic: ""
  }
}