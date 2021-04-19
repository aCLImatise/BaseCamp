version 1.0

task FbaFilter {
  input {
    File? specify_input_file
    File? specify_output_file
    Int? cb_start
    Int? cb_mismatches
    Int? cb_left_shift
    Int? cb_right_shift
    Int? cb_extra_seq
    Int? cb_extra_seq_mismatches
    Int? fb_start
    Int? fb_mismatches
    Int? fb_left_shift
    Int? fb_right_shift
    Int? fb_extra_seq
    Int? fb_extra_seq_mismatches
  }
  command <<<
    fba filter \
      ~{if defined(specify_input_file) then ("--input " +  '"' + specify_input_file + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(cb_start) then ("--cb_start " +  '"' + cb_start + '"') else ""} \
      ~{if defined(cb_mismatches) then ("--cb_mismatches " +  '"' + cb_mismatches + '"') else ""} \
      ~{if defined(cb_left_shift) then ("--cb_left_shift " +  '"' + cb_left_shift + '"') else ""} \
      ~{if defined(cb_right_shift) then ("--cb_right_shift " +  '"' + cb_right_shift + '"') else ""} \
      ~{if defined(cb_extra_seq) then ("--cb_extra_seq " +  '"' + cb_extra_seq + '"') else ""} \
      ~{if defined(cb_extra_seq_mismatches) then ("--cb_extra_seq_mismatches " +  '"' + cb_extra_seq_mismatches + '"') else ""} \
      ~{if defined(fb_start) then ("--fb_start " +  '"' + fb_start + '"') else ""} \
      ~{if defined(fb_mismatches) then ("--fb_mismatches " +  '"' + fb_mismatches + '"') else ""} \
      ~{if defined(fb_left_shift) then ("--fb_left_shift " +  '"' + fb_left_shift + '"') else ""} \
      ~{if defined(fb_right_shift) then ("--fb_right_shift " +  '"' + fb_right_shift + '"') else ""} \
      ~{if defined(fb_extra_seq) then ("--fb_extra_seq " +  '"' + fb_extra_seq + '"') else ""} \
      ~{if defined(fb_extra_seq_mismatches) then ("--fb_extra_seq_mismatches " +  '"' + fb_extra_seq_mismatches + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    specify_input_file: "specify an input file. The output of `extract` or `qc`"
    specify_output_file: "specify an output file"
    cb_start: "specify expected cell barcode starting postion on read\\n1. Default (0)"
    cb_mismatches: "specify cell barcode mismatching threshold. Default\\n(1)"
    cb_left_shift: "specify the maximum left shift allowed for cell\\nbarcode. Default (1)"
    cb_right_shift: "specify the maximum right shift allowed for cell\\nbarcode. Default (1)"
    cb_extra_seq: "specify an extra constant sequence to filter on read\\n1. Default (None)"
    cb_extra_seq_mismatches: "specify the maximun edit distance allowed for the\\nextra constant sequence on read 1 for filtering.\\nDefault (None)"
    fb_start: "specify expected feature barcode starting postion on\\nread 2. Default (10)"
    fb_mismatches: "specify feature barcode mismatching threshold. Default\\n(1)"
    fb_left_shift: "specify the maximum left shift allowed for feature\\nbarcode. Default (1)"
    fb_right_shift: "specify the maximum right shift allowed for feature\\nbarcode. Default (1)"
    fb_extra_seq: "specify an extra constant sequence to filter on read\\n2. Default (None)"
    fb_extra_seq_mismatches: "specify the maximun edit distance allowed for the\\nextra constant sequence on read 2. Default (None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}