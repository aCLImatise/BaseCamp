version 1.0

task VarscanProcessSomatic {
  input {
    Boolean? max_normal_freq
    Boolean? p_value
    String? jar
    String options
  }
  command <<<
    varscan processSomatic \
      ~{options} \
      ~{if (max_normal_freq) then "--max-normal-freq" else ""} \
      ~{if (p_value) then "--p-value" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    max_normal_freq: "- Maximum variant allele frequency in normal [0.05]"
    p_value: "- P-value for high-confidence calling [0.07]"
    jar: ""
    options: "--min-tumor-freq - Minimum variant allele frequency in tumor [0.10]"
  }
  output {
    File out_stdout = stdout()
  }
}