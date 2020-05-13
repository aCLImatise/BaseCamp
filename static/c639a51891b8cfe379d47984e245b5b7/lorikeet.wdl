version 1.0

task Lorikeet {
  input {
    String jarJar
  }
  command <<<
    lorikeet \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""}
  >>>
}