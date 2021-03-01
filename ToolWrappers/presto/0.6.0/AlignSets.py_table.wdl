version 1.0

task AlignSetspyTable {
  input {
    File? outdir
    File? out_name
    Boolean? failed
    String? delim
    File? fasta_file_containing
    File? explicit_output_file
    Boolean? reverse
    String? exec
  }
  command <<<
    AlignSets_py table \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(fasta_file_containing) then ("-p " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    fasta_file_containing: "A FASTA file containing primer sequences. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    reverse: "If specified create a 3' offset table instead\\n(default: False)"
    exec: "The name or location of the muscle executable.\\n(default: muscle)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}