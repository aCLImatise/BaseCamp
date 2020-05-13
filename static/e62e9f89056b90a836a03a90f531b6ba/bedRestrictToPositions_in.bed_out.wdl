version 1.0

task BedRestrictToPositionsIn.bedOut.bed {
  input {
    String? restrictRestrictBed
    String? outOutBed
  }
  command <<<
    bedRestrictToPositions in.bed out.bed \
      ~{restrictRestrictBed} \
      ~{outOutBed}
  >>>
}