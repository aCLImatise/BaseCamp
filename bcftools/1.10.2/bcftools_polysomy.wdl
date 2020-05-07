version 1.0

task BcftoolsPolysomy {
  input {
    Float peakPeakSize
    Float cnCnPenalty
    Float fitFitTh
    Boolean includeIncludeAa
    Float minMinFraction
    Float peakPeakSymmetry
    String? optionsOptions
    File? fileFileVcf
  }
  command <<<
    bcftools polysomy \
      ~{optionsOptions} \
      ~{if defined(peakPeakSize) then ("--peak-size " +  '"' + peakPeakSize + '"') else ""} \
      ~{if defined(cnCnPenalty) then ("--cn-penalty " +  '"' + cnCnPenalty + '"') else ""} \
      ~{if defined(fitFitTh) then ("--fit-th " +  '"' + fitFitTh + '"') else ""} \
      ~{true="--include-aa" false="" includeIncludeAa} \
      ~{if defined(minMinFraction) then ("--min-fraction " +  '"' + minMinFraction + '"') else ""} \
      ~{if defined(peakPeakSymmetry) then ("--peak-symmetry " +  '"' + peakPeakSymmetry + '"') else ""} \
      ~{fileFileVcf}
  >>>
}