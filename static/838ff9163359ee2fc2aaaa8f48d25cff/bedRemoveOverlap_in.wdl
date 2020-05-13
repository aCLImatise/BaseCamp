version 1.0

task BedRemoveOverlapIn.bed {
  input {
    String? outOutBed
  }
  command <<<
    bedRemoveOverlap in.bed \
      ~{outOutBed}
  >>>
}