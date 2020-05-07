version 1.0

task GetCalledRegionsCalled.bed {
  input {
    String? gvcGvcF
    String? calledCalledBed
  }
  command <<<
    get_called_regions called.bed \
      ~{gvcGvcF} \
      ~{calledCalledBed}
  >>>
}