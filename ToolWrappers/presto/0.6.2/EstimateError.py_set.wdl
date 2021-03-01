version 1.0

task EstimateErrorpySet {
  input {
    Array[String] list_fastafastq_files
    File? outdir
    File? out_name
    File? log
    String? delim
    Int? nproc
    String? name_annotation_field
    Int? minimum_number_sequences
    String? mode
    Int? consensus_quality_score
    Int? freq
    Int? max_div
  }
  command <<<
    EstimateError_py set \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(name_annotation_field) then ("-f " +  '"' + name_annotation_field + '"') else ""} \
      ~{if defined(minimum_number_sequences) then ("-n " +  '"' + minimum_number_sequences + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(consensus_quality_score) then ("-q " +  '"' + consensus_quality_score + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(max_div) then ("--maxdiv " +  '"' + max_div + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    name_annotation_field: "The name of the annotation field to group sequences by\\n(default: BARCODE)"
    minimum_number_sequences: "The minimum number of sequences needed to consider a\\nset (default: 20)"
    mode: "Specifies which method to use to determine the\\nconsensus sequence. The \\\"freq\\\" method will determine\\nthe consensus by nucleotide frequency at each position\\nand assign the most common value. The \\\"qual\\\" method\\nwill weight values by their quality scores to\\ndetermine the consensus nucleotide at each position.\\n(default: freq)"
    consensus_quality_score: "Consensus quality score cut-off under which an\\nambiguous character is assigned. (default: 0)"
    freq: "Fraction of character occurrences under which an\\nambiguous character is assigned. (default: 0.6)"
    max_div: "Specify to calculate the nucleotide diversity of each\\nread group (average pairwise error rate) and exclude\\ngroups which exceed the given diversity threshold.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}