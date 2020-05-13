version 1.0

task SnpSiftSort {
  input {
    String jarJar
    String? javaJava
    String? sortSort
    File? fileFileVcf
    File? fileFileNvCf
  }
  command <<<
    SnpSift sort \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{sortSort} \
      ~{fileFileVcf} \
      ~{fileFileNvCf}
  >>>
}