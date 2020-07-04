version 1.0

task CramtoolsQstat {
  input {
    Boolean? default_quality_score
    Boolean? input_file
    Boolean? log_level
    String main_class
  }
  command <<<
    cramtools qstat \
      ~{main_class} \
      ~{true="--default-quality-score" false="" default_quality_score} \
      ~{true="--input-file" false="" input_file} \
      ~{true="--log-level" false="" log_level}
  >>>
  parameter_meta {
    default_quality_score: "Use this value as a default or missing quality score. Lowest is 0, which corresponds to '!' in fastq. (default: 30)"
    input_file: "The path to the CRAM or BAM file."
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
}