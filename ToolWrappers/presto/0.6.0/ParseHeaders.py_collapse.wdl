version 1.0

task ParseHeaderspyCollapse {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Boolean? failed
    Boolean? fast_a
    String? delim
    Array[String] list_collapse_default
    String? act
  }
  command <<<
    ParseHeaders_py collapse \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(list_collapse_default) then ("-f " +  '"' + list_collapse_default + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    list_collapse_default: "List of fields to collapse. (default: None)"
    act: "[{min,max,sum,first,last,set,cat} ...]\\nList of actions to take for each field defining how\\neach annotation will be combined into a single value.\\nThe actions \\\"min\\\", \\\"max\\\", \\\"sum\\\" perform the\\ncorresponding mathematical operation on numeric\\nannotations. The actions \\\"first\\\" and \\\"last\\\" choose the\\nvalue from the corresponding position in the\\nannotation. The action \\\"set\\\" collapses annotations\\ninto a comma delimited list of unique values. The\\naction \\\"cat\\\" concatenates the values together into a\\nsingle string. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}