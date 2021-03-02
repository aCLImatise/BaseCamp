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
      ~{if (by_seq) then "--byseq" else ""} \
      ~{if (case_sensitive) then "--case-sensitive" else ""} \
      ~{if (count_lower) then "--count-lower" else ""} \
      ~{if (counts) then "--counts" else ""} \
      ~{if (type) then "--type" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (proportion) then "--proportion" else ""} \
      ~{if (aa_profile) then "--aa-profile" else ""} \
      ~{if (hist) then "--hist" else ""} \
      ~{if (log_hist) then "--log-hist" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}