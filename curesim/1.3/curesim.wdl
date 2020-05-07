version 1.0

task Curesim {
  input {
    String jarJar
    String fF
    String? javaJava
  }
  command <<<
    curesim \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}