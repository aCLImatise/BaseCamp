version 1.0

task VarscanProcessSomatic {
  input {
    Boolean? min_tumor_freq
    Boolean? max_normal_freq
    Boolean? p_value
    String? jar
    String java
    String process
    String? status_file
  }
  command <<<
    varscan processSomatic \
      ~{java} \
      ~{process} \
      ~{status_file} \
      ~{true="--min-tumor-freq" false="" min_tumor_freq} \
      ~{true="--max-normal-freq" false="" max_normal_freq} \
      ~{true="--p-value" false="" p_value} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    min_tumor_freq: "- Minimum variant allele frequency in tumor [0.10]"
    max_normal_freq: "- Maximum variant allele frequency in normal [0.05]"
    p_value: "- P-value for high-confidence calling [0.07]"
    jar: ""
    java: ""
    process: ""
    status_file: ""
  }
}