version 1.0

task AgatSpFixSmallExonFromExtremitiespl {
  input {
    Boolean? gff
    File? fast_a
    Int? table
    Int? size
    File? _output_
    Boolean? verbose_option_make
    String agat_fix_small_exon_from_extremities_do_tpl
  }
  command <<<
    agat_sp_fix_small_exon_from_extremities_pl \
      ~{agat_fix_small_exon_from_extremities_do_tpl} \
      ~{if (gff) then "-gff" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if (_output_) then "-o" else ""} \
      ~{if (verbose_option_make) then "-v" else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Genome fasta file The name of the fasta file containing the\\ngenome to work with."
    table: "This option allows specifying the codon table to use - It\\nexpects an integer (1 by default = standard)"
    size: "Minimum exon size accepted in nucleotide. All exon below this\\nsize will be extended to this size. Default value = 15."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for\\ndebugging purpose."
    agat_fix_small_exon_from_extremities_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}