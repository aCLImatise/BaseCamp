version 1.0

task SnpSiftGt {
  input {
    Boolean? uncompress_restore_fields
    String? jar
    String java
    String gt
    File? file_dot_vcf
  }
  command <<<
    SnpSift gt \
      ~{java} \
      ~{gt} \
      ~{file_dot_vcf} \
      ~{if (uncompress_restore_fields) then "-u" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    uncompress_restore_fields: ": Uncompress (restore genotype fields)."
    jar: ""
    java: ""
    gt: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}