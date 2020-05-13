version 1.0

task SnpSiftTstv {
  input {
    String jarJar
    String? javaJava
    String? tsTsTv
    File? fileFile1vcf
  }
  command <<<
    SnpSift tstv \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{tsTsTv} \
      ~{fileFile1vcf}
  >>>
}