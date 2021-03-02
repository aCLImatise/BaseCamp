version 1.0

task ParseDbpyMerge {
  input {
    Array[String] list_tab_defaultnone
    File? outdir
    File? out_name
    File? explicit_output_file
    Boolean? drop
  }
  command <<<
    ParseDb_py merge \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if (drop) then "--drop" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir or --outname\\narguments. (default: None)"
    drop: "If specified, drop fields that do not exist in all\\ninput files. Otherwise, include all columns in all\\nfiles and fill missing data with empty strings.\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_explicit_output_file = "${in_explicit_output_file}"
  }
}