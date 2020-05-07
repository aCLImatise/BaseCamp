version 1.0

task PyatacVplot {
  input {
    String bedBed
    String bamBam
    Int coresCores
    Int lowerLower
    Int upperUpper
    Int flankFlank
    Boolean scaleScale
    Int weightWeight
    Int strandStrand
    Boolean notNotAtac
    Boolean noNoPlot
    Boolean plotPlotExtra
  }
  command <<<
    pyatac vplot \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{true="--scale" false="" scaleScale} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{true="--not_atac" false="" notNotAtac} \
      ~{true="--no_plot" false="" noNoPlot} \
      ~{true="--plot_extra" false="" plotPlotExtra}
  >>>
}