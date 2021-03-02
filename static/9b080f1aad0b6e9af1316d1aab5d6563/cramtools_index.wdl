version 1.0

task CramtoolsIndex {
  input {
    Boolean? index_file
    Boolean? index_format
    Boolean? input_file
    Boolean? log_level
    String main_class
  }
  command <<<
    cramtools index \
      ~{main_class} \
      ~{if (index_file) then "--index-file" else ""} \
      ~{if (index_format) then "--index-format" else ""} \
      ~{if (input_file) then "--input-file" else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_file: "Write index to this file."
    index_format: "Choose between BAM index (bai) and CRAM index (crai).  (default: CRAI)"
    input_file: "Path to a BAM or CRAM file to be indexed. Omit if standard input (pipe)."
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
  }
}