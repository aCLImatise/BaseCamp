version 1.0

task FbaMap {
  input {
    Int? read_one
    Int? read_two
    String? whitelist
    String? feature_ref
    File? specify_output_file
    Int? read_one_coords
    Int? cb_mismatches
    Int? cb_num_n_threshold
    String? aligner
    Int? mapping_quality
    Int? umi_start
    Int? umi_length
    Int? umi_mismatches
    String? umi_de_duplication_method
    Directory? output_directory
    Int? threads
    Int? num_n_ref
  }
  command <<<
    fba map \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(feature_ref) then ("--feature_ref " +  '"' + feature_ref + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(read_one_coords) then ("--read1_coords " +  '"' + read_one_coords + '"') else ""} \
      ~{if defined(cb_mismatches) then ("--cb_mismatches " +  '"' + cb_mismatches + '"') else ""} \
      ~{if defined(cb_num_n_threshold) then ("--cb_num_n_threshold " +  '"' + cb_num_n_threshold + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(mapping_quality) then ("--mapping_quality " +  '"' + mapping_quality + '"') else ""} \
      ~{if defined(umi_start) then ("--umi_start " +  '"' + umi_start + '"') else ""} \
      ~{if defined(umi_length) then ("--umi_length " +  '"' + umi_length + '"') else ""} \
      ~{if defined(umi_mismatches) then ("--umi_mismatches " +  '"' + umi_mismatches + '"') else ""} \
      ~{if defined(umi_de_duplication_method) then ("--umi_deduplication_method " +  '"' + umi_de_duplication_method + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_n_ref) then ("--num_n_ref " +  '"' + num_n_ref + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    read_one: "specify fastq file for read 1"
    read_two: "specify fastq file for read 2"
    whitelist: "specify a whitelist of accepted cell barcodes"
    feature_ref: "specify a reference of feature barcodes"
    specify_output_file: "specify an output file"
    read_one_coords: "specify coordinates 'start,end' of read 1 to search.\\nFor example, '0,16': starts at 0, stops at 15.\\nNucleotide bases outside the range will be masked as\\nlower case in output. Default (0,16)"
    cb_mismatches: "specify cell barcode mismatching threshold. Default\\n(1)"
    cb_num_n_threshold: "specify maximum number of ambiguous nucleotides\\nallowed for read 1. Default (3)"
    aligner: "specify aligner for read 2. Default (bwa)"
    mapping_quality: "specify minimal mapping quality required for feature\\nmapping. Default (10)"
    umi_start: "specify expected UMI starting postion on read 1.\\nDefault (16)"
    umi_length: "specify the length of UMIs on read 1. Reads with UMI\\nlength less than this value will be discarded. Default\\n(12)"
    umi_mismatches: "specify the maximun edit distance allowed for UMIs on\\nread 1 for deduplication. Default (1)"
    umi_de_duplication_method: "specify UMI deduplication method (powered by UMI-\\ntools. Smith, T., et al. 2017). Default (directional)"
    output_directory: "specify a temp directory. Default (./barcode_mapping)"
    threads: "specify number of threads to launch. The default is to\\nuse all available"
    num_n_ref: "specify the number of Ns to separate sequences\\nbelonging to the same feature. Default (0)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
    Directory out_output_directory = "${in_output_directory}"
  }
}