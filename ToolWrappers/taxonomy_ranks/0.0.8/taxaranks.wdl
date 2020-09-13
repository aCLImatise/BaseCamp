version 1.0

task Taxaranks {
  input {
    File? file_can_list
    File? outfile
    Boolean? verbose_output
  }
  command <<<
    taxaranks \
      ~{if defined(file_can_list) then ("-i " +  '"' + file_can_list + '"') else ""} \
      ~{if defined(outfile) then ("-o " +  '"' + outfile + '"') else ""} \
      ~{if (verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    file_can_list: "A file can be a list of ncbi taxa id or species names (or higher\\nranks, e.g. Family, Order), or a mixture of them."
    outfile: "outfile"
    verbose_output: "verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}