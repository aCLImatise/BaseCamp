version 1.0

task Ibdseq {
  input {
    String jarJar
    String? javaJava
    String? parametersParameters
  }
  command <<<
    ibdseq \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{parametersParameters}
  >>>
}