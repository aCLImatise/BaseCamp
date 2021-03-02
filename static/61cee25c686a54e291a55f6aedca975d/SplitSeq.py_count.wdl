version 1.0

task SplitSeqpyCount {
  input {
    Array[String] list_fastafastq_files
    File? outdir
    File? out_name
    Boolean? fast_a
    Int? maximum_number_defaultnone
    String max_count
  }
  command <<<
    SplitSeq_py count \
      ~{max_count} \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(maximum_number_defaultnone) then ("-n " +  '"' + maximum_number_defaultnone + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    maximum_number_defaultnone: "Maximum number of sequences in each new file (default:\\nNone)\\n"
    max_count: "Splits sequences files by number of records."
  }
  output {
    File out_stdout = stdout()
  }
}