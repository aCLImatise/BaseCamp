version 1.0

task PynnotatorOr {
  input {
    String iI
    String bB
  }
  command <<<
    pynnotator or \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}