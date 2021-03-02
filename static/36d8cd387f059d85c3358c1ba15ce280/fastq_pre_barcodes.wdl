version 1.0

task FastqPreBarcodes {
  input {
    Boolean? verbose
    Boolean? brief
    File? read_one
    File? read_two
    File? index_one
    File? index_two
    File? index_three
    Boolean? phred_encoding
    Boolean? min_qual
    File? outfile_one
    File? outfile_two
    File? outfile_three
    Boolean? interleaved
    Boolean? umi_read
    Int? umi_offset
    Boolean? umi_size
    Boolean? cell_read
    Int? cell_offset
    Int? cell_size
    Boolean? sample_read
    Int? sample_offset
    Int? sample_size
    Boolean? one_zero_x
    String? optional
    String? parameters
  }
  command <<<
    fastq_pre_barcodes \
      ~{optional} \
      ~{parameters} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (brief) then "--brief" else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(index_one) then ("--index1 " +  '"' + index_one + '"') else ""} \
      ~{if defined(index_two) then ("--index2 " +  '"' + index_two + '"') else ""} \
      ~{if defined(index_three) then ("--index3 " +  '"' + index_three + '"') else ""} \
      ~{if (phred_encoding) then "--phred_encoding" else ""} \
      ~{if (min_qual) then "--min_qual" else ""} \
      ~{if defined(outfile_one) then ("--outfile1 " +  '"' + outfile_one + '"') else ""} \
      ~{if defined(outfile_two) then ("--outfile2 " +  '"' + outfile_two + '"') else ""} \
      ~{if defined(outfile_three) then ("--outfile3 " +  '"' + outfile_three + '"') else ""} \
      ~{if (interleaved) then "--interleaved" else ""} \
      ~{if (umi_read) then "--umi_read" else ""} \
      ~{if defined(umi_offset) then ("--umi_offset " +  '"' + umi_offset + '"') else ""} \
      ~{if (umi_size) then "--umi_size" else ""} \
      ~{if (cell_read) then "--cell_read" else ""} \
      ~{if defined(cell_offset) then ("--cell_offset " +  '"' + cell_offset + '"') else ""} \
      ~{if defined(cell_size) then ("--cell_size " +  '"' + cell_size + '"') else ""} \
      ~{if (sample_read) then "--sample_read" else ""} \
      ~{if defined(sample_offset) then ("--sample_offset " +  '"' + sample_offset + '"') else ""} \
      ~{if defined(sample_size) then ("--sample_size " +  '"' + sample_size + '"') else ""} \
      ~{if (one_zero_x) then "--10x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1"
  }
  parameter_meta {
    verbose: ":increase level of messages printed to stderr"
    brief: ":decrease level of messages printed to stderr"
    read_one: ":fastq (optional gzipped) file name"
    read_two: ":fastq (optional gzipped) file name"
    index_one: ":fastq (optional gzipped) file name"
    index_two: ":fastq (optional gzipped) file name"
    index_three: ":fastq (optional gzipped) file name"
    phred_encoding: "(33|64) :phred encoding used in the input files"
    min_qual: "[0-40]        :defines the minimum quality that all bases in the UMI, CELL or Sample should have (reads that do not pass the criteria are discarded). 0 disables the filter."
    outfile_one: ":file name for ouputing the reads from file1"
    outfile_two: ":file name for ouputing the reads from file2"
    outfile_three: ":file name for ouputing the reads from file3"
    interleaved: "(read1|read2|index1|index2|index3),(read1|read2|index1|index2|index3)    :interleaved data"
    umi_read: "(read1|read2|index1|index2|index3)       :in which input file can the UMI be found"
    umi_offset: ":offset"
    umi_size: ":number of bases after the offset"
    cell_read: "(read1|read2|index1|index2|index3)      :in which input file can the cell be found"
    cell_offset: ":offset"
    cell_size: ":number of bases after the offset"
    sample_read: "(read1|read2|index1|index2|index3)    :in which input file can the sample barcode be found"
    sample_offset: ":offset"
    sample_size: ":number of bases after the offset"
    one_zero_x: ": use 10X UMI tags (UB and UY) instead of the default tags defined in the SAM specification"
    optional: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}