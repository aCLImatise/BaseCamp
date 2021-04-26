version 1.0

task AgatSpKeepLongestIsoformpl {
  input {
    File? gff
    File? file_where_written
    String agat_sp_keep_longest_isoform_do_tpl
  }
  command <<<
    agat_sp_keep_longest_isoform_pl \
      ~{agat_sp_keep_longest_isoform_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(file_where_written) then ("--output " +  '"' + file_where_written + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff: "GTF/GFF file."
    file_where_written: "File where will be written the result. If no output file is\\nspecified, the output will be written to STDOUT."
    agat_sp_keep_longest_isoform_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_file_where_written = "${in_file_where_written}"
  }
}