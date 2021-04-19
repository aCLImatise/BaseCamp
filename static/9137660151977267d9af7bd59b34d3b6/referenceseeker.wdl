version 1.0

task Referenceseeker {
  input {
    Int? crg
    Float? ani
    Float? conserved_dna
    Boolean? unfiltered
    Boolean? bidirectional
    Boolean? verbose
    Int? threads
  }
  command <<<
    referenceseeker \
      ~{if defined(crg) then ("--crg " +  '"' + crg + '"') else ""} \
      ~{if defined(ani) then ("--ani " +  '"' + ani + '"') else ""} \
      ~{if defined(conserved_dna) then ("--conserved-dna " +  '"' + conserved_dna + '"') else ""} \
      ~{if (unfiltered) then "--unfiltered" else ""} \
      ~{if (bidirectional) then "--bidirectional" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/referenceseeker:1.7.1--pyhdfd78af_0"
  }
  parameter_meta {
    crg: "Max number of candidate reference genomes to pass kmer\\nprefilter (default = 100)"
    ani: "ANI threshold (default = 0.95)"
    conserved_dna: "Conserved DNA threshold (default = 0.69)"
    unfiltered: "Set kmer prefilter to extremely conservative values\\nand skip species level ANI cutoffs (ANI >= 0.95 and\\nconserved DNA >= 0.69"
    bidirectional: "Compute bidirectional ANI/conserved DNA values\\n(default = False)"
    verbose: "Print verbose information"
    threads: "Number of used threads (default = number of available\\nCPU cores)"
  }
  output {
    File out_stdout = stdout()
  }
}