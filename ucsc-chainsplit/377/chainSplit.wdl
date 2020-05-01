version 1.0

task ChainSplit {
  input {
    String splitSplit
    String lumpLump
  }
  command <<<
    chainSplit \
      ~{if defined(splitSplit) then ("- Split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(lumpLump) then ("-lump " +  '"' + lumpLump + '"') else ""}
  >>>
}