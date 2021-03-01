version 1.0

task ParseHeaderspyMerge {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Boolean? failed
    Boolean? fast_a
    String? delim
    Array[String] list_merge_default
    String? name_field_is
    String? act
    Boolean? delete
  }
  command <<<
    ParseHeaders_py merge \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(list_merge_default) then ("-f " +  '"' + list_merge_default + '"') else ""} \
      ~{if defined(name_field_is) then ("-k " +  '"' + name_field_is + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if (delete) then "--delete" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    list_merge_default: "List of fields to merge. (default: None)"
    name_field_is: "Name for the merged field. If the new field is already\\npresent, the merged fields will be merged into the\\nexisting field. (default: None)"
    act: "List of collapse actions to take on the new field\\nfollowing the merge defining how to combine the\\nannotations into a single value. The actions \\\"min\\\",\\n\\\"max\\\", \\\"sum\\\" perform the corresponding mathematical\\noperation on numeric annotations. The action \\\"set\\\"\\ncollapses annotations into a comma delimited list of\\nunique values. The action \\\"cat\\\" concatenates the\\nvalues together into a single string. (default: None)"
    delete: "If specified, delete the field that were merged from\\nthe output header. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}