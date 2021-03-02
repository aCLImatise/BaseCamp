version 1.0

task ParseDbpyRename {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Array[String] list_rename_default
    Array[String] list_new_none
  }
  command <<<
    ParseDb_py rename \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(list_rename_default) then ("-f " +  '"' + list_rename_default + '"') else ""} \
      ~{if defined(list_new_none) then ("-k " +  '"' + list_new_none + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    list_rename_default: "List of fields to rename. (default: None)"
    list_new_none: "List of new names for each field. (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}