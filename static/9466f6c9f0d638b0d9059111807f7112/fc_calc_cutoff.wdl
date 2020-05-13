version 1.0

task FcCalcCutoff {
  input {
    String coverageCoverage
    String? genomeGenomeSize
    String? captureCapture
  }
  command <<<
    fc_calc_cutoff \
      ~{genomeGenomeSize} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{captureCapture}
  >>>
}