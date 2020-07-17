version 1.0

task FastaIndex {
  input {
    Boolean? verbose
    String? fast_a
    String? out
    Boolean? contigs_contig_regions
    String? calculate_nxx_exit
    String? calculate_lxx_exit
    Boolean? stats
  }
  command <<<
    FastaIndex \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="-r" false="" contigs_contig_regions} \
      ~{if defined(calculate_nxx_exit) then ("-N " +  '"' + calculate_nxx_exit + '"') else ""} \
      ~{if defined(calculate_lxx_exit) then ("-L " +  '"' + calculate_lxx_exit + '"') else ""} \
      ~{true="--stats" false="" stats}
  >>>
  parameter_meta {
    verbose: "verbose"
    fast_a: "FASTA file(s)"
    out: "output stream    [stdout]"
    contigs_contig_regions: "[REGIONS [REGIONS ...]], --regions [REGIONS [REGIONS ...]] contig(s) or contig region(s) to output (returns reverse complement if end larger than start)"
    calculate_nxx_exit: "calculate NXX and exit ie N50"
    calculate_lxx_exit: "calculate LXX and exit ie L50"
    stats: "return FastA stats aka fasta_stats"
  }
}