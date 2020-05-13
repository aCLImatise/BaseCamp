version 1.0

task Benchmark2mates {
  input {
    Boolean oO
    Boolean cC
  }
  command <<<
    benchmark2mates \
      ~{true="-o" false="" oO} \
      ~{true="-C" false="" cC}
  >>>
}