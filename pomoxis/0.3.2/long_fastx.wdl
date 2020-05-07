version 1.0

task LongFastx {
  input {
    String longestLongest
    String basesBases
    String othersOthers
    String? inputInput
    String? outputOutput
  }
  command <<<
    long_fastx \
      ~{inputInput} \
      ~{if defined(longestLongest) then ("--longest " +  '"' + longestLongest + '"') else ""} \
      ~{if defined(basesBases) then ("--bases " +  '"' + basesBases + '"') else ""} \
      ~{if defined(othersOthers) then ("--others " +  '"' + othersOthers + '"') else ""} \
      ~{outputOutput}
  >>>
}