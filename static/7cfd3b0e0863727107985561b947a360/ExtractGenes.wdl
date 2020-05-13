version 1.0

task ExtractGenes.py {
  input {
    String cC
    String gffGffFile
  }
  command <<<
    ExtractGenes.py \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gffGffFile) then ("--gfffile " +  '"' + gffGffFile + '"') else ""}
  >>>
}