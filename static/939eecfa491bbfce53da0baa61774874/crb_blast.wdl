version 1.0

task CrbBlast {
  input {
    String? query
    String? target
    String? evalue
    String? threads
    String? output_file_tsv
    Boolean? split
    Boolean? verbose
  }
  command <<<
    crb-blast \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_tsv) then ("--output " +  '"' + output_file_tsv + '"') else ""} \
      ~{true="--split" false="" split} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    query: "query fasta file"
    target: "target fasta file"
    evalue: "e-value cut off for BLAST. Format 1e-5 (default: 1.0e-05)"
    threads: "number of threads to run BLAST with (default: 1)"
    output_file_tsv: "output file as tsv"
    split: "split the fasta files into chunks and run multiple blast jobs and then combine them."
    verbose: "be verbose"
  }
}