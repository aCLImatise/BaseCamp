version 1.0

task TOBIASFilterFragments {
  input {
    Boolean bamBam
    Boolean regionsRegions
    Boolean modeMode
    Boolean outputOutput
    Boolean threadsThreads
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS FilterFragments \
      ~{true="--bam" false="" bamBam} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--threads" false="" threadsThreads} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}