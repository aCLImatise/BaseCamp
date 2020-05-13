version 1.0

task PyatacBiasVplot {
  input {
    String bedBed
    Int sizesSizes
    String bgBg
    String fastFastA
    String pwmPwm
    Int coresCores
    Int weightWeight
    Int strandStrand
    Boolean noNoPlot
    Boolean plotPlotExtra
  }
  command <<<
    pyatac bias_vplot \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(bgBg) then ("--bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(pwmPwm) then ("--pwm " +  '"' + pwmPwm + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{true="--no_plot" false="" noNoPlot} \
      ~{true="--plot_extra" false="" plotPlotExtra}
  >>>
}