version 1.0

task AgatSpFixSmallExonFromExtremitiespl {
  input {
    Boolean? gff
    File? fast_a
    Int? table
    Int? size
    File? outfile
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
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose_option_make) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Genome fasta file The name of the fasta file containing the\\ngenome to work with."
    table: "This option allows specifying the codon table to use - It\\nexpects an integer (1 by default = standard)"
    size: "Minimum exon size accepted in nucleotide. All exon below this\\nsize will be extended to this size. Default value = 15."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for\\ndebugging purpose."
    agat_fix_small_exon_from_extremities_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}