version 1.0

task Effectivet3 {
  input {
    String jarJar
    String fF
    String mM
    String tT
    String oO
    Boolean qQ
    String? javaJava
    String? orOr
  }
  command <<<
    effectivet3 \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{orOr}
  >>>
}