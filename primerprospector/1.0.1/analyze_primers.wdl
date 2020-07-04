version 1.0

task AnalyzePrimers.py {
  input {
    String? fast_a_seqs
  }
  command <<<
    analyze_primers.py \
      ~{if defined(fast_a_seqs) then ("--fasta_seqs " +  '"' + fast_a_seqs + '"') else ""}
  >>>
  parameter_meta {
    fast_a_seqs: "Target fasta file(s) to score input primer(s) against. Separate multiple files with a colon. [REQUIRED]"
  }
}