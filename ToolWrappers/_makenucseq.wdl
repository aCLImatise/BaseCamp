version 1.0

task Makenucseq {
  input {
    Boolean? codon_file
    Boolean? amount
    Boolean? length
    Boolean? use_insert
    Float six_dot_six_dot_zero_dot_zero
  }
  command <<<
    _makenucseq \
      ~{six_dot_six_dot_zero_dot_zero} \
      ~{if (codon_file) then "-codonfile" else ""} \
      ~{if (amount) then "-amount" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (use_insert) then "-useinsert" else ""}
  >>>
  parameter_meta {
    codon_file: "codon      Optional codon usage file. Nucleotide\\nsequences will be created as triplets\\nmatching the frequencies in the file, with\\nthe end trimmed to be in the correct reading\\nframe."
    amount: "integer    [100] Number of sequences created (Integer 1\\nor more)"
    length: "integer    [100] Length of each sequence (Integer 1 or\\nmore)"
    use_insert: "toggle     [N] Do you want to make an insert"
    six_dot_six_dot_zero_dot_zero: "Standard (Mandatory) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}