version 1.0

task SSAKE {
  input {
    String iI
    String jJ
    String uU
  }
  command <<<
    SSAKE \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""}
  >>>
}