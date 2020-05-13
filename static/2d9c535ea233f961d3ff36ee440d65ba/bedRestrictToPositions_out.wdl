version 1.0

task BedRestrictToPositionsOut.bed {
  input {
    String? inInBed
    String? restrictRestrictBed
    String? outOutBed
  }
  command <<<
    bedRestrictToPositions out.bed \
      ~{inInBed} \
      ~{restrictRestrictBed} \
      ~{outOutBed}
  >>>
}