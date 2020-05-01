version 1.0

task BigWigAverageOverBed {
  input {
    String includeInclude
    String? inInBw
    String? inInBed
    String? outOutTab
  }
  command <<<
    bigWigAverageOverBed \
      ~{inInBw} \
      ~{if defined(includeInclude) then ("- include " +  '"' + includeInclude + '"') else ""} \
      ~{inInBed} \
      ~{outOutTab}
  >>>
}