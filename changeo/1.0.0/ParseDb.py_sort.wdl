version 1.0

task ParseDbpySort {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    String? annotation_field_sort
    Boolean? num
    Boolean? descend
  }
  command <<<
    ParseDb_py sort \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(annotation_field_sort) then ("-f " +  '"' + annotation_field_sort + '"') else ""} \
      ~{if (num) then "--num" else ""} \
      ~{if (descend) then "--descend" else ""}
  >>>
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    annotation_field_sort: "The annotation field by which to sort records.\\n(default: None)"
    num: "Specify to define the sort column as numeric rather\\nthan textual. (default: False)"
    descend: "If specified, sort records in descending, rather than\\nascending, order by values in the target field.\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}