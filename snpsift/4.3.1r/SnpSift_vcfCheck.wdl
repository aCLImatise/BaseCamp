version 1.0

task SnpSiftVcfCheck {
  input {
    String jarJar
    String? javaJava
    String? vcfVcfCheck
    File? fileFile1vcf
    File? fileFileNvCf
  }
  command <<<
    SnpSift vcfCheck \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{vcfVcfCheck} \
      ~{fileFile1vcf} \
      ~{fileFileNvCf}
  >>>
}