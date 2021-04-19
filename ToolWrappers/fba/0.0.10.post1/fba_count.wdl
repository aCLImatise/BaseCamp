version 1.0

task FbaCount {
  input {
    File? specify_input_file
    File? specify_output_file
    Int? umi_start
    Int? umi_length
    Int? umi_mismatches
    String? umi_de_duplication_method
  }
  command <<<
    fba count \
      ~{if defined(specify_input_file) then ("--input " +  '"' + specify_input_file + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(umi_start) then ("--umi_start " +  '"' + umi_start + '"') else ""} \
      ~{if defined(umi_length) then ("--umi_length " +  '"' + umi_length + '"') else ""} \
      ~{if defined(umi_mismatches) then ("--umi_mismatches " +  '"' + umi_mismatches + '"') else ""} \
      ~{if defined(umi_de_duplication_method) then ("--umi_deduplication_method " +  '"' + umi_de_duplication_method + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    specify_input_file: "specify an input file"
    specify_output_file: "specify an output file"
    umi_start: "specify expected UMI starting postion on read 1.\\nDefault (16)"
    umi_length: "specify the length of UMIs on read 1. Reads with UMI\\nlength less than this value will be discarded. Default\\n(12)"
    umi_mismatches: "specify the maximun edit distance allowed for UMIs on\\nread 1 for deduplication. Default (1)"
    umi_de_duplication_method: "specify UMI deduplication method (powered by UMI-\\ntools. Smith, T., et al. 2017). Default (directional)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}