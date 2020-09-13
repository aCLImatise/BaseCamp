version 1.0

task SplitSeqpySample {
  input {
    Array[String] list_fastafastq_files
    File? outdir
    File? out_name
    Boolean? fast_a
    String? delim
    Array[Int] maximum_number_sample
    String? annotation_field_sampling
    Array[String] specified_sampling_will
  }
  command <<<
    SplitSeq_py sample \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(maximum_number_sample) then ("-n " +  '"' + maximum_number_sample + '"') else ""} \
      ~{if defined(annotation_field_sampling) then ("-f " +  '"' + annotation_field_sampling + '"') else ""} \
      ~{if defined(specified_sampling_will) then ("-u " +  '"' + specified_sampling_will + '"') else ""}
  >>>
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    maximum_number_sample: "Maximum number of sequences to sample from each file,\\nfield or annotation set. The default behavior, without\\nthe -f argument, is to sample from the complete set of\\nsequences in the input file. (default: None)"
    annotation_field_sampling: "The annotation field for sampling criteria. If the -u\\nargument is not also specified, then sampling will be\\nperformed for each unique annotation value in the\\ndeclared field separately. (default: None)"
    specified_sampling_will: "If specified, sampling will be restricted to sequences\\nthat contain one of the declared annotation values in\\nthe specified field. Requires the -f argument.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}