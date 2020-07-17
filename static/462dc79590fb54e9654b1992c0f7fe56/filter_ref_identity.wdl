version 1.0

task FilterRefIdentity {
  input {
    String? specify_file_analysed
    String? discard
    Boolean? verbose
    Boolean? debug
    Boolean? modify
    Int? min_reads
    Int? max_reads
    Int? min_identity
    Int? max_identity
    Boolean? no_deamination
    Boolean? no_indels
    Boolean? no_unknown
  }
  command <<<
    filter_ref_identity \
      ~{if defined(specify_file_analysed) then ("--input " +  '"' + specify_file_analysed + '"') else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--modify" false="" modify} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(max_reads) then ("--max_reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_identity) then ("--max_identity " +  '"' + max_identity + '"') else ""} \
      ~{true="--no_deamination" false="" no_deamination} \
      ~{true="--no_indels" false="" no_indels} \
      ~{true="--no_unknown" false="" no_unknown}
  >>>
  parameter_meta {
    specify_file_analysed: "specify SAM file to be analysed (default: STDIN)"
    discard: "keep or discard entries passing the filter criteria?"
    verbose: "print additional information to stderr"
    debug: "print debug messages to stderr"
    modify: "modify header by adding PG record"
    min_reads: "minimum percentage of reads with insufficient identity [50.0]"
    max_reads: "maximum percentage of reads with insufficient identity [100.0]"
    min_identity: "minimum percent identity [90.0]"
    max_identity: "maximum percent identity [100.0]"
    no_deamination: "do not treat possibly deaminated T>C and A>G pairs as mismatches in calculation of percent identity"
    no_indels: "do not treat insertions and deletions in alignment as mismatches in calculation of percent identity"
    no_unknown: "do not treat Ns in alignment as mismatch in calculation of percent identity"
  }
}