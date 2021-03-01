version 1.0

task SnpSiftSort {
  input {
    String? jar
    String java
    String sort
    File file_dot_vcf
    String? file_ndot_vcf
  }
  command <<<
    SnpSift sort \
      ~{java} \
      ~{sort} \
      ~{file_dot_vcf} \
      ~{file_ndot_vcf} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar: ""
    java: ""
    sort: ""
    file_dot_vcf: ""
    file_ndot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}