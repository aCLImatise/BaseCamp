version 1.0

task FindFootprints.shFixedBg {
  input {
    String? bamBamFile
    String? chromChromSizes
    String? motifMotifCoords
    String? genomeGenomeFastA
    String? factorFactorName
    String? biasBiasFile
    String? peakPeakFile
    String? noNoOfComponents
    String? backgroundBackground
    String? fixedFixedBg
  }
  command <<<
    find_footprints.sh fixed_bg \
      ~{bamBamFile} \
      ~{chromChromSizes} \
      ~{motifMotifCoords} \
      ~{genomeGenomeFastA} \
      ~{factorFactorName} \
      ~{biasBiasFile} \
      ~{peakPeakFile} \
      ~{noNoOfComponents} \
      ~{backgroundBackground} \
      ~{fixedFixedBg}
  >>>
}