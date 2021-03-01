version 1.0

task SplitSeqpyGroup {
  input {
    Array[String] list_fastafastq_files
    File? outdir
    File? out_name
    Boolean? fast_a
    String? delim
    String? annotation_field_split
    Int? num
  }
  command <<<
    SplitSeq_py group \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(annotation_field_split) then ("-f " +  '"' + annotation_field_split + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    annotation_field_split: "Annotation field to split sequence files by (default:\\nNone)"
    num: "Specify to define the split field as numeric and group\\nsequences by value. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}