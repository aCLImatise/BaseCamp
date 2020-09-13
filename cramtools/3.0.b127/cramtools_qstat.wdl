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
      ~{if (default_quality_score) then "--default-quality-score" else ""} \
      ~{if (input_file) then "--input-file" else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  parameter_meta {
    default_quality_score: "Use this value as a default or missing quality score. Lowest is 0, which corresponds to '!' in fastq. (default: 30)"
    input_file: "The path to the CRAM or BAM file."
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
  }
}