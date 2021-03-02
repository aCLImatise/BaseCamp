version 1.0

task Taxaranks {
  input {
    File? file_be_list
    File? outfile
    Boolean? also_print_taxid
    File? also_print_records
    Boolean? verbose_output
  }
  command <<<
    taxaranks \
      ~{if defined(file_be_list) then ("-i " +  '"' + file_be_list + '"') else ""} \
      ~{if defined(outfile) then ("-o " +  '"' + outfile + '"') else ""} \
      ~{if (also_print_taxid) then "-t" else ""} \
      ~{if (also_print_records) then "-e" else ""} \
      ~{if (verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/taxonomy_ranks:0.0.10--py_0"
  }
  parameter_meta {
    file_be_list: "A file can be a list of ncbi taxa id or species names (or higher\\nranks, e.g. Family, Order), or a mixture of them."
    outfile: "outfile"
    also_print_taxid: "Also print out the taxid for each rank"
    also_print_records: "Also print out the records without lineage information found to\\nthe '-o <file>'"
    verbose_output: "verbose output"
  }
  output {
    File out_stdout = stdout()
    File out_also_print_records = "${in_also_print_records}"
  }
}