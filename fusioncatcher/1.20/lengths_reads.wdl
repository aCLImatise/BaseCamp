version 1.0

task LengthsReads.py {
  input {
    String inputInput
    String outputOutput
    String countsCounts
  }
  command <<<
    lengths_reads.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(countsCounts) then ("--counts " +  '"' + countsCounts + '"') else ""}
  >>>
}