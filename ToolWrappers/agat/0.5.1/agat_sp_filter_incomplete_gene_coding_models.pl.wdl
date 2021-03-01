version 1.0

task AgatSpFilterIncompleteGeneCodingModelspl {
  input {
    Boolean? gff
    File? fast_a
    Int? table
    Int? add_flag
    String? skip_start_check
    String? skip_stop_check
    File? outfile
    Boolean? verbose_option_make
    String agat_sp_filter_incomplete_gene_coding_models_do_tpl
  }
  command <<<
    agat_sp_filter_incomplete_gene_coding_models_pl \
      ~{agat_sp_filter_incomplete_gene_coding_models_do_tpl} \
      ~{if (gff) then "-gff" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(add_flag) then ("--add_flag " +  '"' + add_flag + '"') else ""} \
      ~{if defined(skip_start_check) then ("--skip_start_check " +  '"' + skip_start_check + '"') else ""} \
      ~{if defined(skip_stop_check) then ("--skip_stop_check " +  '"' + skip_stop_check + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose_option_make) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Genome fasta file. The name of the fasta file containing the\\ngenome to work with."
    table: "This option allows specifying the codon table to use. It expects\\nan integer [default 1]"
    add_flag: "Instead of filter the result into two output files, write only\\none and add the flag <incomplete> in the gff.(tag = inclomplete,\\nvalue = 1, 2, 3. 1=start missing; 2=stop missing; 3=both)"
    skip_start_check: "Gene model must have a start codon. Activated by default."
    skip_stop_check: "Gene model must have a stop codon. Activated by default."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for\\ndebugging purpose."
    agat_sp_filter_incomplete_gene_coding_models_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}