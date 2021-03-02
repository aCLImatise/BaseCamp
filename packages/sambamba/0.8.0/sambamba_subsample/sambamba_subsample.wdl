version 1.0

task SambambaSubsample {
  input {
    Boolean? type
    Boolean? max_cov
    File? set_output_file
    Boolean? remove
    String? logging
    String input_dot_bam
  }
  command <<<
    sambamba subsample \
      ~{input_dot_bam} \
      ~{if (type) then "--type" else ""} \
      ~{if (max_cov) then "--max-cov" else ""} \
      ~{if defined(set_output_file) then ("--output " +  '"' + set_output_file + '"') else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if defined(logging) then ("--logging " +  '"' + logging + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    type: "[fasthash]   Algorithm for subsampling (fasthash, default is none)"
    max_cov: "[depth]   Maximum coverage (approx)"
    set_output_file: "Set output file (default stdout)"
    remove: "Remove over sampled reads from output"
    logging: "Set logging to debug|info|warning|critical -nyi"
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_set_output_file = "${in_set_output_file}"
  }
}