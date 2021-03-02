version 1.0

task ParseHeaderspyCopy {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Boolean? failed
    Boolean? fast_a
    String? delim
    Array[String] list_copy_default
    Array[String] list_names_copied
    String? act
  }
  command <<<
    ParseHeaders_py copy \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(list_copy_default) then ("-f " +  '"' + list_copy_default + '"') else ""} \
      ~{if defined(list_names_copied) then ("-k " +  '"' + list_names_copied + '"') else ""} \
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
    list_copy_default: "List of fields to copy. (default: None)"
    list_names_copied: "List of names for each copied field. If the new field\\nis already present, the copied field will be merged\\ninto the existing field. (default: None)"
    act: "[{min,max,sum,first,last,set,cat} ...]\\nList of collapse actions to take on each new field\\nfollowing the copy operation defining how each\\nannotation will be combined into a single value. The\\nactions \\\"min\\\", \\\"max\\\", \\\"sum\\\" perform the corresponding\\nmathematical operation on numeric annotations. The\\nactions \\\"first\\\" and \\\"last\\\" choose the value from the\\ncorresponding position in the annotation. The action\\n\\\"set\\\" collapses annotations into a comma delimited\\nlist of unique values. The action \\\"cat\\\" concatenates\\nthe values together into a single string. (default:\\nNone)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}