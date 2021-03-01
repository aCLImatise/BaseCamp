version 1.0

task ScramFlagstat {
  input {
    String? set_input_format
    String? specifies_refseqstartend_range
    File? specifies_reference_file
    String? use_n_threads
    String? input_file
  }
  command <<<
    scram_flagstat \
      ~{input_file} \
      ~{if defined(set_input_format) then ("-I " +  '"' + set_input_format + '"') else ""} \
      ~{if defined(specifies_refseqstartend_range) then ("-R " +  '"' + specifies_refseqstartend_range + '"') else ""} \
      ~{if defined(specifies_reference_file) then ("-r " +  '"' + specifies_reference_file + '"') else ""} \
      ~{if defined(use_n_threads) then ("-t " +  '"' + use_n_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_input_format: "Set input format:  \\\"bam\\\", \\\"sam\\\" or \\\"cram\\\"."
    specifies_refseqstartend_range: "[Cram] Specifies the refseq:start-end range"
    specifies_reference_file: "[Cram] Specifies the reference file."
    use_n_threads: "Use N threads (availability varies by format)"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}