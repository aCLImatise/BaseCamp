version 1.0

task Pynnotator {
  input {
    String iI
    String bB
  }
  command <<<
    pynnotator \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}