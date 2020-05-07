version 1.0

task CasmLayout {
  input {
    String bB
    String? deltaDeltaFile
  }
  command <<<
    casm-layout \
      ~{deltaDeltaFile} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}