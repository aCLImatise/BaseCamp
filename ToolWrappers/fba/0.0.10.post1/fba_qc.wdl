version 1.0

task FbaQc {
  input {
    Int? read_one
    Int? read_two
    String? whitelist
    String? feature_ref
    Int? read_one_coords
    Int? read_two_coords
    Int? cb_mismatches
    Int? fb_mismatches
    Int? cb_num_n_threshold
    Int? fb_num_n_threshold
    Int? threads
    Int? num_reads
    Int? chunk_size
    Directory? output_directory
  }
  command <<<
    fba qc \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(feature_ref) then ("--feature_ref " +  '"' + feature_ref + '"') else ""} \
      ~{if defined(read_one_coords) then ("--read1_coords " +  '"' + read_one_coords + '"') else ""} \
      ~{if defined(read_two_coords) then ("--read2_coords " +  '"' + read_two_coords + '"') else ""} \
      ~{if defined(cb_mismatches) then ("--cb_mismatches " +  '"' + cb_mismatches + '"') else ""} \
      ~{if defined(fb_mismatches) then ("--fb_mismatches " +  '"' + fb_mismatches + '"') else ""} \
      ~{if defined(cb_num_n_threshold) then ("--cb_num_n_threshold " +  '"' + cb_num_n_threshold + '"') else ""} \
      ~{if defined(fb_num_n_threshold) then ("--fb_num_n_threshold " +  '"' + fb_num_n_threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_reads) then ("--num_reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    read_one: "specify fastq file for read 1"
    read_two: "specify fastq file for read 2. If only read 2 file is\\nprovided, bulk mode is enabled (skipping arguments\\n'-1', ' -w', '-cb_m', '-r1_coords', must provide\\n'-r2_coords' and '-fb_m'). In bulk mode, reads 2 will\\nbe searched against reference feature barcodes and\\nread count for each feature barcode will be summarized"
    whitelist: "specify a whitelist of accepted cell barcodes"
    feature_ref: "specify a reference of feature barcodes"
    read_one_coords: "specify coordinates 'start,end' of read 1 to search\\n(doesn't need to be the exact expected barcode range).\\nThe default is to use all the nucleotide bases.\\nNucleotide bases outside the range will be masked as\\nlower case in output"
    read_two_coords: "see '-r1_coords'"
    cb_mismatches: "specify cell barcode mismatching threshold. Default\\n(3)"
    fb_mismatches: "specify feature barcode mismatching threshold. Default\\n(3)"
    cb_num_n_threshold: "specify maximum number of ambiguous nucleotides\\nallowed for read 1. The default is no limit"
    fb_num_n_threshold: "specify maximum number of ambiguous nucleotides\\nallowed for read 2. The default is no limit"
    threads: "specify number of threads for barcode extraction.\\nDefault is to use all available"
    num_reads: "specify number of reads for analysis. Set to (None)\\nwill analyze all the reads. Default (100,000)"
    chunk_size: "specify the chunk size for multiprocessing. Default\\n(50,000)"
    output_directory: "specify a output directory. Default (./qc)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}