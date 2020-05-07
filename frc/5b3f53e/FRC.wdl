version 1.0

task FRC {
  input {
    String pePeSam
    String pePeMaxInsert
    String mpMpSam
    String mpMpMaxInsert
    String genomeGenomeSize
    String outputOutput
    String ceCeStatsPeMin
    String ceCeStatsPeMax
    String ceCeStatsMpMin
    String ceCeStatsMpMax
  }
  command <<<
    FRC \
      ~{if defined(pePeSam) then ("--pe-sam " +  '"' + pePeSam + '"') else ""} \
      ~{if defined(pePeMaxInsert) then ("--pe-max-insert " +  '"' + pePeMaxInsert + '"') else ""} \
      ~{if defined(mpMpSam) then ("--mp-sam " +  '"' + mpMpSam + '"') else ""} \
      ~{if defined(mpMpMaxInsert) then ("--mp-max-insert " +  '"' + mpMpMaxInsert + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(ceCeStatsPeMin) then ("--CEstats-PE-min " +  '"' + ceCeStatsPeMin + '"') else ""} \
      ~{if defined(ceCeStatsPeMax) then ("--CEstats-PE-max " +  '"' + ceCeStatsPeMax + '"') else ""} \
      ~{if defined(ceCeStatsMpMin) then ("--CEstats-MP-min " +  '"' + ceCeStatsMpMin + '"') else ""} \
      ~{if defined(ceCeStatsMpMax) then ("--CEstats-MP-max " +  '"' + ceCeStatsMpMax + '"') else ""}
  >>>
}