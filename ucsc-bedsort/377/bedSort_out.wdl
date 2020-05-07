version 1.0

task BedSortOut.bed {
  input {
    String? inInBed
    String? outOutBed
  }
  command <<<
    bedSort out.bed \
      ~{inInBed} \
      ~{outOutBed}
  >>>
}