version 1.0

task AggGenotype {
  input {
    String regionsRegions
    Boolean oO
    Boolean oO
    Int threadThread
  }
  command <<<
    agg genotype \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""}
  >>>
}