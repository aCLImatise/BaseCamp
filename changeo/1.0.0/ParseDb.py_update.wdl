version 1.0

task ParseDbpyUpdate {
  input {
    Array[String] t
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    String? name_update_default
    Array[String] values_will_replaced
  }
  command <<<
    ParseDb_py update \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(name_update_default) then ("-f " +  '"' + name_update_default + '"') else ""} \
      ~{if defined(values_will_replaced) then ("-u " +  '"' + values_will_replaced + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    name_update_default: "The name of the field to update. (default: None)"
    values_will_replaced: "The values that will be replaced. (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}