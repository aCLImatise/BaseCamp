version 1.0

task CleanFasta.py {
  input {
    String? fast_a_seqs
  }
  command <<<
    clean_fasta.py \
      ~{if defined(fast_a_seqs) then ("--fasta_seqs " +  '"' + fast_a_seqs + '"') else ""}
  >>>
  parameter_meta {
    fast_a_seqs: "Target fasta file(s) to filter. Separate multiple files with a colon. [REQUIRED]"
  }
}