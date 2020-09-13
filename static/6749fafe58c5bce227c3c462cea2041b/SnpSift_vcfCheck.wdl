version 1.0

task SnpSiftVcfCheck {
  input {
    String? jar
    String java
    String vcf_check
    Int file_one_dot_vcf
    String? file_ndot_vcf
  }
  command <<<
    SnpSift vcfCheck \
      ~{java} \
      ~{vcf_check} \
      ~{file_one_dot_vcf} \
      ~{file_ndot_vcf} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    vcf_check: ""
    file_one_dot_vcf: ""
    file_ndot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}