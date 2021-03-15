version 1.0

task SplitSeqpySort {
  input {
    Array[String] list_fastafastq_files
    File? outdir
    File? out_name
    Boolean? fast_a
    String? delim
    String? annotation_field_sort
    Int? maximum_number_none
    Boolean? num
  }
  command <<<
    SplitSeq_py sort \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(annotation_field_sort) then ("-f " +  '"' + annotation_field_sort + '"') else ""} \
      ~{if defined(maximum_number_none) then ("-n " +  '"' + maximum_number_none + '"') else ""} \
      ~{if (num) then "--num" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    annotation_field_sort: "The annotation field to sort sequences by. (default:\\nNone)"
    maximum_number_none: "Maximum number of sequences in each new file.\\n(default: None)"
    num: "Specify to define the sort field as numeric rather\\nthan textual. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}