version 1.0

task CIRCexplorer2Denovo {
  input {
    String refRef
    String asAs
    String asAsType
    String absAbs
    String bedBed
    String cuffCuff
    String topTopHat
    String paPaPlus
    String outputOutput
    String genomeGenome
    Boolean noNoFix
    Boolean rpRpKm
  }
  command <<<
    CIRCexplorer2 denovo \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(asAs) then ("--as " +  '"' + asAs + '"') else ""} \
      ~{if defined(asAsType) then ("--as-type " +  '"' + asAsType + '"') else ""} \
      ~{if defined(absAbs) then ("--abs " +  '"' + absAbs + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(cuffCuff) then ("--cuff " +  '"' + cuffCuff + '"') else ""} \
      ~{if defined(topTopHat) then ("--tophat " +  '"' + topTopHat + '"') else ""} \
      ~{if defined(paPaPlus) then ("--pAplus " +  '"' + paPaPlus + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--no-fix" false="" noNoFix} \
      ~{true="--rpkm" false="" rpRpKm}
  >>>
}