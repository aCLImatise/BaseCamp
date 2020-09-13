version 1.0

task FastaIndex {
  input {
    Boolean? verbose
    File? fast_a
    String? out
    Boolean? contigs_contig_regions
    Int? calculate_nxx_n
    Int? calculate_lxx_l
    Boolean? stats
  }
  command <<<
    FastaIndex \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (contigs_contig_regions) then "-r" else ""} \
      ~{if defined(calculate_nxx_n) then ("-N " +  '"' + calculate_nxx_n + '"') else ""} \
      ~{if defined(calculate_lxx_l) then ("-L " +  '"' + calculate_lxx_l + '"') else ""} \
      ~{if (stats) then "--stats" else ""}
  >>>
  parameter_meta {
    verbose: "verbose"
    fast_a: "FASTA file(s)"
    out: "output stream    [stdout]"
    contigs_contig_regions: "[REGIONS [REGIONS ...]], --regions [REGIONS [REGIONS ...]]\\ncontig(s) or contig region(s) to output (returns reverse complement if end larger than start)"
    calculate_nxx_n: "calculate NXX and exit ie N50"
    calculate_lxx_l: "calculate LXX and exit ie L50"
    stats: "return FastA stats aka fasta_stats"
  }
  output {
    File out_stdout = stdout()
  }
}