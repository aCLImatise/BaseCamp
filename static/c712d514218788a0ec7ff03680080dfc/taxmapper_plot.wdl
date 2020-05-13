version 1.0

task TaxmapperPlot {
  input {
    Array[String]+ taxTaxA
    Array[String]+ samplesSamples
    String freqFreq
    String countsCounts
    String plotPlot
  }
  command <<<
    taxmapper plot \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(freqFreq) then ("--freq " +  '"' + freqFreq + '"') else ""} \
      ~{if defined(countsCounts) then ("--counts " +  '"' + countsCounts + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""}
  >>>
}