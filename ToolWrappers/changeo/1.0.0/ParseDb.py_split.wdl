version 1.0

task ParseDbpySplit {
  input {
    Array[String] list_tab_defaultnone
    File? outdir
    File? out_name
    String? annotation_field_split
    Int? num
  }
  command <<<
    ParseDb_py split \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(annotation_field_split) then ("-f " +  '"' + annotation_field_split + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    annotation_field_split: "Annotation field by which to split database files.\\n(default: None)"
    num: "Specify to define the field as numeric and group\\nrecords by whether they are less than or at least\\n(greater than or equal to) the specified value.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}