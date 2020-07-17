version 1.0

task AgatSpFilterIncompleteGeneCodingModels.pl {
  input {
    Boolean? gff
    String? fast_a
    String? table
    String? add_flag
    String? skip_start_check
    String? skip_stop_check
    Boolean? _output_
    Boolean? verbose_option_make
  }
  command <<<
    agat_sp_filter_incomplete_gene_coding_models.pl \
      ~{true="-gff" false="" gff} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(add_flag) then ("--add_flag " +  '"' + add_flag + '"') else ""} \
      ~{if defined(skip_start_check) then ("--skip_start_check " +  '"' + skip_start_check + '"') else ""} \
      ~{if defined(skip_stop_check) then ("--skip_stop_check " +  '"' + skip_stop_check + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{true="-v" false="" verbose_option_make}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Genome fasta file. The name of the fasta file containing the genome to work with."
    table: "This option allows specifying the codon table to use. It expects an integer [default 1]"
    add_flag: "Instead of filter the result into two output files, write only one and add the flag <incomplete> in the gff.(tag = inclomplete, value = 1, 2, 3. 1=start missing; 2=stop missing; 3=both)"
    skip_start_check: "Gene model must have a start codon. Activated by default."
    skip_stop_check: "Gene model must have a stop codon. Activated by default."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for debugging purpose."
  }
}