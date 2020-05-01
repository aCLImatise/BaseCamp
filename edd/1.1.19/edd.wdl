version 1.0

task Edd {
  input {
    String gapGapPenalty
    String configConfigFile
    Boolean writeWriteLogRatios
    Boolean writeWriteBinScores
    String? chromChromSize
    String? unUnAlignAbleRegions
    String? ipIpBam
    String? inputInputBam
    String? outputOutputDir
  }
  command <<<
    edd \
      ~{chromChromSize} \
      ~{if defined(gapGapPenalty) then ("--gap-penalty " +  '"' + gapGapPenalty + '"') else ""} \
      ~{if defined(configConfigFile) then ("--config-file " +  '"' + configConfigFile + '"') else ""} \
      ~{true="--write-log-ratios" false="" writeWriteLogRatios} \
      ~{true="--write-bin-scores" false="" writeWriteBinScores} \
      ~{unUnAlignAbleRegions} \
      ~{ipIpBam} \
      ~{inputInputBam} \
      ~{outputOutputDir}
  >>>
}