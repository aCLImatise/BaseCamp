version 1.0

task SplitSeqpySelect {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Boolean? fast_a
    String? delim
    String? annotation_field_defaultnone
    Array[String] list_select_none
    File? tab_delimited_file
    Boolean? not
  }
  command <<<
    SplitSeq_py select \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(annotation_field_defaultnone) then ("-f " +  '"' + annotation_field_defaultnone + '"') else ""} \
      ~{if defined(list_select_none) then ("-u " +  '"' + list_select_none + '"') else ""} \
      ~{if defined(tab_delimited_file) then ("-t " +  '"' + tab_delimited_file + '"') else ""} \
      ~{if (not) then "--not" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    annotation_field_defaultnone: "The annotation field for selection criteria. (default:\\nNone)"
    list_select_none: "A list of values to select for in the specified field.\\nMutually exclusive with -t. (default: None)"
    tab_delimited_file: "A tab delimited file specifying values to select for\\nin the specified field. The file must be formatted\\nwith the given field name in the header row. Values\\nwill be taken from that column. Mutually exclusive\\nwith -u. (default: None)"
    not: "If specified, will perform negative matching. Meaning,\\nsequences will be selected if they fail to match for\\nall specified values. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}