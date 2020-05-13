version 1.0

task Lace.py {
  input {
    String coresCores
    Boolean alternateAlternate
    Boolean tidyTidy
    Int maxMaxTran
    String outputOutputDir
    String? genomeGenomeFile
    String? clusterClusterFile
  }
  command <<<
    Lace.py \
      ~{genomeGenomeFile} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--alternate" false="" alternateAlternate} \
      ~{true="--tidy" false="" tidyTidy} \
      ~{if defined(maxMaxTran) then ("--maxTran " +  '"' + maxMaxTran + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{clusterClusterFile}
  >>>
}