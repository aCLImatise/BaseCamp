version 1.0

task Cgview {
  input {
    String jarJar
    String fF
    String iI
    String oO
    String hH
    String? javaJava
  }
  command <<<
    cgview \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}