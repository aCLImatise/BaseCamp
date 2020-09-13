version 1.0

task SnpSiftGeneSets {
  input {
    String? jar
    String java
    String misi_gdb_dot_gmt
    File file_dot_vcf
  }
  command <<<
    SnpSift geneSets \
      ~{java} \
      ~{misi_gdb_dot_gmt} \
      ~{file_dot_vcf} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    misi_gdb_dot_gmt: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}