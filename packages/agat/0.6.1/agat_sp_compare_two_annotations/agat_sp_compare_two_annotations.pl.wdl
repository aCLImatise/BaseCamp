version 1.0

task AgatSpCompareTwoAnnotationspl {
  input {
    Boolean? gff_one
    Boolean? gff_two
    File? outfile
    Boolean? verbose_option_make
    String agat_sp_compare_two_annotations_do_tpl
  }
  command <<<
    agat_sp_compare_two_annotations_pl \
      ~{agat_sp_compare_two_annotations_do_tpl} \
      ~{if (gff_one) then "-gff1" else ""} \
      ~{if (gff_two) then "-gff2" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose_option_make) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff_one: "Input GTF/GFF file1."
    gff_two: "Input GTF/GFF file2."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for\\ndebugging purpose."
    agat_sp_compare_two_annotations_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}