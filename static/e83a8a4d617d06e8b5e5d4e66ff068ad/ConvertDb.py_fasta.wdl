version 1.0

task ConvertDbpyFasta {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    String? name_containing_identifiers
    String? sf
    Array[String] mf
  }
  command <<<
    ConvertDb_py fasta \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(name_containing_identifiers) then ("--if " +  '"' + name_containing_identifiers + '"') else ""} \
      ~{if defined(sf) then ("--sf " +  '"' + sf + '"') else ""} \
      ~{if defined(mf) then ("--mf " +  '"' + mf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    name_containing_identifiers: "The name of the field containing identifiers (default:\\nsequence_id)"
    sf: "The name of the field containing sequences (default:\\nsequence_alignment)"
    mf: "List of annotation fields to add to the sequence\\ndescription (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}