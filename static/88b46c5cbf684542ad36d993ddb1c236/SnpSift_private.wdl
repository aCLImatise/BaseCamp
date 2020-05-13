version 1.0

task SnpSiftPrivate {
  input {
    String jarJar
    String? javaJava
    String? privatePrivate
    File? filetFiletFam
    File? fileFileVcf
  }
  command <<<
    SnpSift private \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{privatePrivate} \
      ~{filetFiletFam} \
      ~{fileFileVcf}
  >>>
}