version 1.0

task AgatSpFixSmallExonFromExtremities.pl {
  input {
    Boolean? gff
    String? fast_a
    String? table
    String? size
    Boolean? _output_
    Boolean? verbose_option_make
    String agat_fix_small_exon_from_extremities_do_tpl
  }
  command <<<
    agat_sp_fix_small_exon_from_extremities.pl \
      ~{agat_fix_small_exon_from_extremities_do_tpl} \
      ~{true="-gff" false="" gff} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{true="-v" false="" verbose_option_make}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Genome fasta file The name of the fasta file containing the genome to work with."
    table: "This option allows specifying the codon table to use - It expects an integer (1 by default = standard)"
    size: "Minimum exon size accepted in nucleotide. All exon below this size will be extended to this size. Default value = 15."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for debugging purpose."
    agat_fix_small_exon_from_extremities_do_tpl: ""
  }
}