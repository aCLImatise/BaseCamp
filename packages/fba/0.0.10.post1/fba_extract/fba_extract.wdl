version 1.0

task FbaExtract {
  input {
    Int? read_one
    Int? read_two
    String? whitelist
    String? feature_ref
    File? specify_output_file
    Int? read_one_coords
    Int? read_two_coords
    Int? cb_mismatches
    Int? fb_mismatches
    Int? cb_num_n_threshold
    Int? fb_num_n_threshold
  }
  command <<<
    fba extract \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(feature_ref) then ("--feature_ref " +  '"' + feature_ref + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(read_one_coords) then ("--read1_coords " +  '"' + read_one_coords + '"') else ""} \
      ~{if defined(read_two_coords) then ("--read2_coords " +  '"' + read_two_coords + '"') else ""} \
      ~{if defined(cb_mismatches) then ("--cb_mismatches " +  '"' + cb_mismatches + '"') else ""} \
      ~{if defined(fb_mismatches) then ("--fb_mismatches " +  '"' + fb_mismatches + '"') else ""} \
      ~{if defined(cb_num_n_threshold) then ("--cb_num_n_threshold " +  '"' + cb_num_n_threshold + '"') else ""} \
      ~{if defined(fb_num_n_threshold) then ("--fb_num_n_threshold " +  '"' + fb_num_n_threshold + '"') else ""}
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
    read_two_coords: "see '-r1_coords'"
    cb_mismatches: "specify cell barcode mismatching threshold. Default\\n(1)"
    fb_mismatches: "specify feature barcode mismatching threshold. Default\\n(1)"
    cb_num_n_threshold: "specify maximum number of ambiguous nucleotides\\nallowed for read 1. Default (3)"
    fb_num_n_threshold: "specify maximum number of ambiguous nucleotides\\nallowed for read 2. Default (3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}