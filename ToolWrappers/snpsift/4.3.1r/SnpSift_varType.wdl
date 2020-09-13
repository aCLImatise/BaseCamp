version 1.0

task SnpSiftVarType {
  input {
    String? jar
    String java
    String vartype
    File file_dot_vcf
  }
  command <<<
    SnpSift varType \
      ~{java} \
      ~{vartype} \
      ~{file_dot_vcf} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    vartype: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}