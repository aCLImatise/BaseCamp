version 1.0

task BedRestrictToPositionsRestrict.bed {
  input {
    String? inInBed
    String? restrictRestrictBed
    String? outOutBed
  }
  command <<<
    bedRestrictToPositions restrict.bed \
      ~{inInBed} \
      ~{restrictRestrictBed} \
      ~{outOutBed}
  >>>
}