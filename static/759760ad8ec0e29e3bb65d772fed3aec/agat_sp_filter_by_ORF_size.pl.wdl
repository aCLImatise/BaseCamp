version 1.0

task AgatSpFilterByORFSizepl {
  input {
    File? gff
    Int? size
    String? test
    Boolean? verbose_useful_debugging
    File? outfile
    String agat_sp_filter_by_orf_size_do_tpl
  }
  command <<<
    agat_sp_filter_by_ORF_size_pl \
      ~{agat_sp_filter_by_orf_size_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if (verbose_useful_debugging) then "-v" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    size: "ORF size to apply the test. Default 100."
    test: "to apply (> < = >= <=). If you us one of these two"
    verbose_useful_debugging: "Verbose. Useful for debugging purpose. Bolean"
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_filter_by_orf_size_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}