version 1.0

task SqtAlign {
  input {
    Boolean? semi_global
    Int? max_error_rate
    Boolean? reverse_complement
    Boolean? merge
    Int sequence_one
    Int sequence_two
  }
  command <<<
    sqt align \
      ~{sequence_one} \
      ~{sequence_two} \
      ~{if (semi_global) then "--semiglobal" else ""} \
      ~{if defined(max_error_rate) then ("--max-error-rate " +  '"' + max_error_rate + '"') else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (merge) then "--merge" else ""}
  >>>
  parameter_meta {
    semi_global: "Run a semi-global alignment (for detecting overlaps).\\nDefault: global alignment."
    max_error_rate: "Switch to cutadapt algorithm (also enables\\n--semiglobal). No alignment will be printed."
    reverse_complement: "Run the alignment also with the reverse-complement of\\nthe second sequence"
    merge: "Output a merged sequence (also enables --semiglobal)"
    sequence_one: "Sequence or path to FASTA file. If FASTA, only the\\nfirst sequence is used."
    sequence_two: "Sequence or path to FASTA file. If FASTA, only the\\nfirst sequence is used."
  }
  output {
    File out_stdout = stdout()
  }
}