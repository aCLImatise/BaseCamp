version 1.0

task Referenceseeker {
  input {
    String? crg
    String? ani
    String? conserved_dna
    Boolean? unfiltered
    Boolean? bidirectional
    Boolean? verbose
    String? threads
  }
  command <<<
    referenceseeker \
      ~{if defined(crg) then ("--crg " +  '"' + crg + '"') else ""} \
      ~{if defined(ani) then ("--ani " +  '"' + ani + '"') else ""} \
      ~{if defined(conserved_dna) then ("--conserved-dna " +  '"' + conserved_dna + '"') else ""} \
      ~{true="--unfiltered" false="" unfiltered} \
      ~{true="--bidirectional" false="" bidirectional} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    crg: "Max number of candidate reference genomes to pass kmer prefilter (default = 100)"
    ani: "ANI threshold (default = 0.95)"
    conserved_dna: "Conserved DNA threshold (default = 0.69)"
    unfiltered: "Set kmer prefilter to extremely conservative values and skip species level ANI cutoffs (ANI >= 0.95 and conserved DNA >= 0.69"
    bidirectional: "Compute bidirectional ANI/conserved DNA values (default = False)"
    verbose: "Print verbose information"
    threads: "Number of used threads (default = number of available CPU cores)"
  }
}