version 1.0

task Varscan {
  input {
    String jarJar
  }
  command <<<
    varscan \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""}
  >>>
}