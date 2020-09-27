version 1.0

task SnpSiftTstv {
  input {
    String? jar
    String java
    String ts_tv
    Int file_one_dot_vcf
  }
  command <<<
    SnpSift tstv \
      ~{java} \
      ~{ts_tv} \
      ~{file_one_dot_vcf} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    ts_tv: ""
    file_one_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}