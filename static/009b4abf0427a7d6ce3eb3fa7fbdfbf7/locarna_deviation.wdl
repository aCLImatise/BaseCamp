version 1.0

task LocarnaDeviation {
  input {
    String? deviationDeviation
    String? alnAlnFile
    String? refRefAlnFile
  }
  command <<<
    locarna_deviation \
      ~{deviationDeviation} \
      ~{alnAlnFile} \
      ~{refRefAlnFile}
  >>>
}