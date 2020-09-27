version 1.0

task Crbblast {
  input {
    File? query
    File? target
    Float? evalue
    Int? threads
    File? output_file_tsv
    Boolean? split
    String options
  }
  command <<<
    crb_blast \
      ~{options} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_tsv) then ("--output " +  '"' + output_file_tsv + '"') else ""} \
      ~{if (split) then "--split" else ""}
  >>>
  parameter_meta {
    query: "query fasta file"
    target: "target fasta file"
    evalue: "e-value cut off for BLAST. Format 1e-5 (default:\\n1.0e-05)"
    threads: "number of threads to run BLAST with (default: 1)"
    output_file_tsv: "output file as tsv"
    split: "split the fasta files into chunks and run multiple blast\\njobs and then combine them."
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_tsv = "${in_output_file_tsv}"
  }
}