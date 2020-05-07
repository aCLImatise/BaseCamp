version 1.0

task BedRestrictToPositionsIn.bedRestrict.bed {
  input {
    String? outOutBed
  }
  command <<<
    bedRestrictToPositions in.bed restrict.bed \
      ~{outOutBed}
  >>>
}