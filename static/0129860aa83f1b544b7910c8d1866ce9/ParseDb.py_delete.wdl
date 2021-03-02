version 1.0

task ParseDbpyDelete {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Array[String] name_check_none
    Array[String] values_defining_records
    String? logic
    Boolean? regex
  }
  command <<<
    ParseDb_py delete \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(name_check_none) then ("-f " +  '"' + name_check_none + '"') else ""} \
      ~{if defined(values_defining_records) then ("-u " +  '"' + values_defining_records + '"') else ""} \
      ~{if defined(logic) then ("--logic " +  '"' + logic + '"') else ""} \
      ~{if (regex) then "--regex" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/changeo:1.0.2--py_0"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    name_check_none: "The name of the fields to check for deletion criteria.\\n(default: None)"
    values_defining_records: "The values defining which records to delete. A value\\nmay appear in any of the fields specified with -f.\\n(default: ['', 'NA'])"
    logic: "Defines whether a value may appear in any field (any)\\nor whether it must appear in all fields (all).\\n(default: any)"
    regex: "If specified, treat values as regular expressions and\\nallow partial string matches. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}