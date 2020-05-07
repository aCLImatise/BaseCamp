version 1.0

task MerfishtoolsDiffexp {
  input {
    Float maxMaxNullLog2fc
    Float pseudoPseudoCounts
    File cdfCdf
    Int threadsThreads
    String? optionsOptions
    String? groupGroup1
    String? groupGroup2
  }
  command <<<
    merfishtools diffexp \
      ~{optionsOptions} \
      ~{if defined(maxMaxNullLog2fc) then ("--max-null-log2fc " +  '"' + maxMaxNullLog2fc + '"') else ""} \
      ~{if defined(pseudoPseudoCounts) then ("--pseudocounts " +  '"' + pseudoPseudoCounts + '"') else ""} \
      ~{if defined(cdfCdf) then ("--cdf " +  '"' + cdfCdf + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{groupGroup1} \
      ~{groupGroup2}
  >>>
}