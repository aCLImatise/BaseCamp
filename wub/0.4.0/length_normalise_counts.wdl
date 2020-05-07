version 1.0

task LengthNormaliseCounts.pyInputCounts {
  input {
    String fF
    String? inputInputCounts
    String? outputOutputCount
  }
  command <<<
    length_normalise_counts.py input_counts \
      ~{inputInputCounts} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{outputOutputCount}
  >>>
}