version 1.0

task Mcxdeblast {
  input {
    Boolean m9M9
    String lineLineMode
    Boolean scoreScore
    Boolean sortSort
    String tabTab
    String xiXiDat
    String xoXoDat
    String bBCut
    String eECut
    String rRCut
    String outOut
    File? fileFileName
  }
  command <<<
    mcxdeblast \
      ~{fileFileName} \
      ~{true="--m9" false="" m9M9} \
      ~{if defined(lineLineMode) then ("--line-mode " +  '"' + lineLineMode + '"') else ""} \
      ~{true="--score" false="" scoreScore} \
      ~{true="--sort" false="" sortSort} \
      ~{if defined(tabTab) then ("--tab " +  '"' + tabTab + '"') else ""} \
      ~{if defined(xiXiDat) then ("--xi-dat " +  '"' + xiXiDat + '"') else ""} \
      ~{if defined(xoXoDat) then ("--xo-dat " +  '"' + xoXoDat + '"') else ""} \
      ~{if defined(bBCut) then ("--bcut " +  '"' + bBCut + '"') else ""} \
      ~{if defined(eECut) then ("--ecut " +  '"' + eECut + '"') else ""} \
      ~{if defined(rRCut) then ("--rcut " +  '"' + rRCut + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}