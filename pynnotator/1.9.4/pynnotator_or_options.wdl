version 1.0

task PynnotatorOrOptions {
  input {
    String iI
    String bB
    String? hg38Hg38
  }
  command <<<
    pynnotator or options \
      ~{hg38Hg38} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}