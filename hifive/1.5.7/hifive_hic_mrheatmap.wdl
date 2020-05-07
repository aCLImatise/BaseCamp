version 1.0

task HifiveHicMrheatmap {
  input {
    Boolean transTrans
    String chromosomesChromosomes
    Int minMinObservations
    Int maximumMaximumBinsize
    Int minimumMinimumBinsize
    Int maximumMaximumTransBinsize
    Int minimumMinimumTransBinsize
    String midMidBinsize
    String datatypeDatatype
    Boolean quietQuiet
    String? projectProject
    String? outputOutput
  }
  command <<<
    hifive hic-mrheatmap \
      ~{projectProject} \
      ~{true="--trans" false="" transTrans} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(minMinObservations) then ("--minobservations " +  '"' + minMinObservations + '"') else ""} \
      ~{if defined(maximumMaximumBinsize) then ("--maximum-binsize " +  '"' + maximumMaximumBinsize + '"') else ""} \
      ~{if defined(minimumMinimumBinsize) then ("--minimum-binsize " +  '"' + minimumMinimumBinsize + '"') else ""} \
      ~{if defined(maximumMaximumTransBinsize) then ("--maximum-trans-binsize " +  '"' + maximumMaximumTransBinsize + '"') else ""} \
      ~{if defined(minimumMinimumTransBinsize) then ("--minimum-trans-binsize " +  '"' + minimumMinimumTransBinsize + '"') else ""} \
      ~{if defined(midMidBinsize) then ("--mid-binsize " +  '"' + midMidBinsize + '"') else ""} \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}