version 1.0

task BedSortIn.bed {
  input {
    String? outOutBed
  }
  command <<<
    bedSort in.bed \
      ~{outOutBed}
  >>>
}