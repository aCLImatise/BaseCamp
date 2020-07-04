version 1.0

task GaasFastaGetLongestORF.pl {
  input {
    String? fast_a
    String? size_min
    String? table
    Boolean? force_start_codon
    Boolean? force_complete
    Boolean? keep_all_orf
    Boolean? verbose_useful_debugging
    String? outfile
  }
  command <<<
    gaas_fasta_get_longestORF.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(size_min) then ("--size_min " +  '"' + size_min + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--force_start_codon" false="" force_start_codon} \
      ~{true="--force_complete" false="" force_complete} \
      ~{true="--keep_all_orf" false="" keep_all_orf} \
      ~{true="-v" false="" verbose_useful_debugging} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Nucleotide fasta file."
    size_min: "Minimum length of the ORF to be kept in AA (100 by default)"
    table: "This option allows specifying the codon table to use - It expects an integer (1 by default = standard)"
    force_start_codon: "This option force to keep the longest ORF that contains a start codon (M). Bolean"
    force_complete: "This option force to keep the longest ORF that contains a start codon (M) and stop codon (*). Bolean"
    keep_all_orf: "This option force to keep all the ORFs that meet the criteria. Bolean"
    verbose_useful_debugging: "Verbose. Useful for debugging purpose. Bolean"
    outfile: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}