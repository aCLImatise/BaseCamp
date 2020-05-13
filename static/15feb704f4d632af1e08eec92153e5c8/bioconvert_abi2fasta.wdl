version 1.0

task BioconvertAbi2fasta {
  input {
    Boolean forceForce
    String verbosityVerbosity
    Boolean raiseRaiseException
    Boolean batchBatch
    Boolean benchmarkBenchmark
    String benchmarkBenchmarkN
    Array[String]+ benchmarkBenchmarkMethods
    Boolean allowAllowIndirectConversion
    String extraExtraArguments
    Boolean mM
    Boolean showShowMethods
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    bioconvert abi2fasta \
      ~{inputInputFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--raise-exception" false="" raiseRaiseException} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--benchmark" false="" benchmarkBenchmark} \
      ~{if defined(benchmarkBenchmarkN) then ("--benchmark-N " +  '"' + benchmarkBenchmarkN + '"') else ""} \
      ~{if defined(benchmarkBenchmarkMethods) then ("--benchmark-methods " +  '"' + benchmarkBenchmarkMethods + '"') else ""} \
      ~{true="--allow-indirect-conversion" false="" allowAllowIndirectConversion} \
      ~{if defined(extraExtraArguments) then ("--extra-arguments " +  '"' + extraExtraArguments + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="--show-methods" false="" showShowMethods} \
      ~{outputOutputFile}
  >>>
}