version 1.0

task SmofSample {
  input {
    String numberNumber
    String seedSeed
    String? inputInput
  }
  command <<<
    smof sample \
      ~{inputInput} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}