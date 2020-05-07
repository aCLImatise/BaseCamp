version 1.0

task HifiveHicProject {
  input {
    String chromosomesChromosomes
    Int minMinInteractions
    Int minMinDistance
    Int maxMaxDistance
    Int minMinBinsize
    String numNumBins
    Boolean quietQuiet
    String? dataData
    String? outputOutput
  }
  command <<<
    hifive hic-project \
      ~{dataData} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(minMinInteractions) then ("--min-interactions " +  '"' + minMinInteractions + '"') else ""} \
      ~{if defined(minMinDistance) then ("--min-distance " +  '"' + minMinDistance + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--max-distance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(minMinBinsize) then ("--min-binsize " +  '"' + minMinBinsize + '"') else ""} \
      ~{if defined(numNumBins) then ("--num-bins " +  '"' + numNumBins + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}