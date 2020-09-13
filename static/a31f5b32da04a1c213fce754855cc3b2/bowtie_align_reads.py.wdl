version 1.0

task Bowtiealignreadspy {
  input {
    String? reference
    File? index
    Directory? temp
    String? allowed_mismatch
    String? multi_alignment
    String? processor
    Boolean? filter_unmapped
    String fast_an
  }
  command <<<
    bowtie_align_reads_py \
      ~{fast_an} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(allowed_mismatch) then ("--allowedmismatch " +  '"' + allowed_mismatch + '"') else ""} \
      ~{if defined(multi_alignment) then ("--multialignment " +  '"' + multi_alignment + '"') else ""} \
      ~{if defined(processor) then ("--processor " +  '"' + processor + '"') else ""} \
      ~{if (filter_unmapped) then "--filterunmapped" else ""}
  >>>
  parameter_meta {
    reference: "Reference genome in fasta format. If you have multiple\\nreference files, please use multipe -r options. If you\\nhave aready index the reference sequences, you should\\nuse the -i option."
    index: "Use the supplied bowtie index file, instead of\\nindexing the genome in the script.\\nIf your genome index files are in folder\\n/user/home/index, with names TAIR10.1.ebwt,\\nTAIR10.2.ebwt, etc, you must use -i\\n/user/home/index/TAIR10 for the -i option."
    temp: "Temporary folder to hold the bowtie index files. If\\nnot supplied, the current directory is used. Only used\\nwith -r."
    allowed_mismatch: ""
    multi_alignment: ""
    processor: "Use multiple threads to do alignment."
    filter_unmapped: "Filter out unmapped alignments in the output."
    fast_an: ""
  }
  output {
    File out_stdout = stdout()
  }
}