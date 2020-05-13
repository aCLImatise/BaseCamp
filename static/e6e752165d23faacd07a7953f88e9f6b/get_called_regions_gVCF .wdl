version 1.0

task GetCalledRegionsGVCF  {
  input {
    String? calledCalledBed
  }
  command <<<
    get_called_regions gVCF  \
      ~{calledCalledBed}
  >>>
}