version 1.0

task PhyloCSF {
  input {
    Boolean filesFiles
    Boolean removeRemoveRefGaps
    String speciesSpecies
    Boolean f1F1
    String orfOrf
    Int minMinCodons
    Boolean allAllScores
    Boolean pintPint
    Boolean blsBls
    Boolean ancAncComp
    Boolean dnaDna
    Boolean aaAa
    Boolean debugDebug
  }
  command <<<
    PhyloCSF \
      ~{true="--files" false="" filesFiles} \
      ~{true="--removeRefGaps" false="" removeRemoveRefGaps} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{true="-f1" false="" f1F1} \
      ~{if defined(orfOrf) then ("--orf " +  '"' + orfOrf + '"') else ""} \
      ~{if defined(minMinCodons) then ("--minCodons " +  '"' + minMinCodons + '"') else ""} \
      ~{true="--allScores" false="" allAllScores} \
      ~{true="-pINT" false="" pintPint} \
      ~{true="--bls" false="" blsBls} \
      ~{true="--ancComp" false="" ancAncComp} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--aa" false="" aaAa} \
      ~{true="--debug" false="" debugDebug}
  >>>
}