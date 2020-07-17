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
      ~{true="--index-file" false="" index_file} \
      ~{true="--index-format" false="" index_format} \
      ~{true="--input-file" false="" input_file} \
      ~{true="--log-level" false="" log_level}
  >>>
  parameter_meta {
    index_file: "Write index to this file."
    index_format: "Choose between BAM index (bai) and CRAM index (crai).  (default: CRAI)"
    input_file: "Path to a BAM or CRAM file to be indexed. Omit if standard input (pipe)."
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
}