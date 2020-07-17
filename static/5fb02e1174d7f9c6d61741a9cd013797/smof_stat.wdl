version 1.0

task SmofStat {
  input {
    String? delimiter
    Boolean? by_seq
    Boolean? case_sensitive
    Boolean? count_lower
    Boolean? counts
    Boolean? type
    Boolean? length
    Boolean? proportion
    Boolean? aa_profile
    Boolean? hist
    Boolean? log_hist
    String input_fasta_sequence
  }
  command <<<
    smof stat \
      ~{input_fasta_sequence} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{true="--byseq" false="" by_seq} \
      ~{true="--case-sensitive" false="" case_sensitive} \
      ~{true="--count-lower" false="" count_lower} \
      ~{true="--counts" false="" counts} \
      ~{true="--type" false="" type} \
      ~{true="--length" false="" length} \
      ~{true="--proportion" false="" proportion} \
      ~{true="--aa-profile" false="" aa_profile} \
      ~{true="--hist" false="" hist} \
      ~{true="--log-hist" false="" log_hist}
  >>>
  parameter_meta {
    delimiter: "output delimiter"
    by_seq: "write a line for each sequence"
    case_sensitive: "match case"
    count_lower: "count the number of lowercase characters"
    counts: "write counts of all characters"
    type: "guess sequence type"
    length: "write sequence length"
    proportion: "write proportion of each character"
    aa_profile: "display protein profile"
    hist: "write ascii histogram of sequence lengths"
    log_hist: "write ascii histogram of sequence log2 lengths"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}