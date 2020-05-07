version 1.0

task TigmintMolecule {
  input {
    File outputOutput
    File outOutBam
    Boolean bedBed
    Boolean tsvTsv
    String distDist
    String readsReads
    String mapqMapq
    String asAsRatio
    String nmNm
    String sizeSize
    String? bamBam
  }
  command <<<
    tigmint-molecule \
      ~{bamBam} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOutBam) then ("--out-bam " +  '"' + outOutBam + '"') else ""} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--tsv" false="" tsvTsv} \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(asAsRatio) then ("--as-ratio " +  '"' + asAsRatio + '"') else ""} \
      ~{if defined(nmNm) then ("--nm " +  '"' + nmNm + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""}
  >>>
}