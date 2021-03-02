version 1.0

task SplitSeqpySamplepair {
  input {
    Array[Int] ordered_list_containingheadprimary
    Array[Int] ordered_list_containingtailsecondary
    File? outdir
    File? out_name
    Boolean? fast_a
    String? delim
    Array[Int] maximum_number_sample
    String? annotation_field_sampling
    Array[String] specified_sampling_restricted
    String? coord
  }
  command <<<
    SplitSeq_py samplepair \
      ~{if defined(ordered_list_containingheadprimary) then ("-1 " +  '"' + ordered_list_containingheadprimary + '"') else ""} \
      ~{if defined(ordered_list_containingtailsecondary) then ("-2 " +  '"' + ordered_list_containingtailsecondary + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(maximum_number_sample) then ("-n " +  '"' + maximum_number_sample + '"') else ""} \
      ~{if defined(annotation_field_sampling) then ("-f " +  '"' + annotation_field_sampling + '"') else ""} \
      ~{if defined(specified_sampling_restricted) then ("-u " +  '"' + specified_sampling_restricted + '"') else ""} \
      ~{if defined(coord) then ("--coord " +  '"' + coord + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ordered_list_containingheadprimary: "An ordered list of FASTA/FASTQ files containing\\nhead/primary sequences. (default: None)"
    ordered_list_containingtailsecondary: "An ordered list of FASTA/FASTQ files containing\\ntail/secondary sequences. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    maximum_number_sample: "Maximum number of paired sequences to sample from each\\nset of files, fields or annotations. The default\\nbehavior, without the -f argument, is to sample from\\nthe complete set of paired sequences in the input\\nfiles. (default: None)"
    annotation_field_sampling: "The annotation field for sampling criteria. If the -u\\nargument is not also specified, then sampling will be\\nperformed for each unique annotation value in the\\ndeclared field separately. (default: None)"
    specified_sampling_restricted: "If specified, sampling will be restricted to sequences\\nthat contain one of the declared annotation values in\\nthe specified field. Requires the -f argument.\\n(default: None)"
    coord: "The format of the sequence identifier which defines\\nshared coordinate information across paired read\\nfiles. (default: presto)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}