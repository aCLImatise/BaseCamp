version 1.0

task HmmgsMerge {
  input {
    Boolean? all
    String? min_bits
    String? min_length
    String? out
    String? short_sample_name
    String usage
  }
  command <<<
    hmmgs merge \
      ~{usage} \
      ~{true="--all" false="" all} \
      ~{if defined(min_bits) then ("--min-bits " +  '"' + min_bits + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(short_sample_name) then ("--short_samplename " +  '"' + short_sample_name + '"') else ""}
  >>>
  parameter_meta {
    all: "Generate all combinations for multiple paths, instead of just the best"
    min_bits: "Minimum bits score"
    min_length: "Minimum length"
    out: "Write output to file instead of stdout"
    short_sample_name: "short sample name, to be used as part of contig identifiers. This allow analyzing contigs together from different samples in downstream analysis"
    usage: ""
  }
}