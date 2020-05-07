version 1.0

task MerfishtoolsMultidiffexpOPTIONS {
  input {
    Float maxMaxNullCv
    Float pseudoPseudoCounts
    File cdfCdf
    Int threadsThreads
  }
  command <<<
    merfishtools multidiffexp OPTIONS \
      ~{if defined(maxMaxNullCv) then ("--max-null-cv " +  '"' + maxMaxNullCv + '"') else ""} \
      ~{if defined(pseudoPseudoCounts) then ("--pseudocounts " +  '"' + pseudoPseudoCounts + '"') else ""} \
      ~{if defined(cdfCdf) then ("--cdf " +  '"' + cdfCdf + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}