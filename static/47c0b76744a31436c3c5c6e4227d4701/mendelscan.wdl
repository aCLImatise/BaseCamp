version 1.0

task Mendelscan {
  input {
    String jarJar
  }
  command <<<
    mendelscan \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""}
  >>>
}