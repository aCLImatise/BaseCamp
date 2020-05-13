version 1.0

task BedRemoveOverlapOut.bed {
  input {
    String? inInBed
    String? outOutBed
  }
  command <<<
    bedRemoveOverlap out.bed \
      ~{inInBed} \
      ~{outOutBed}
  >>>
}