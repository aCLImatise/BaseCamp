version 1.0

task AgatSpFilterByMrnaBlastValuepl {
  input {
    Boolean? gff
    File? blast
    File? outfile
    String agat_sp_filter_by_mrna_blast_value_do_tpl
  }
  command <<<
    agat_sp_filter_by_mrnaBlastValue_pl \
      ~{agat_sp_filter_by_mrna_blast_value_do_tpl} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if (outfile) then "--outfile" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    blast: "list of the all-vs-all blast file (outfmt 6, blastp)"
    outfile: "The name of the output file. By default the output is the\\nstandard output."
    agat_sp_filter_by_mrna_blast_value_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}