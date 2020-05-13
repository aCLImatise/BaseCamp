version 1.0

task Hisatgenotype.py {
  input {
    String alignmentAlignmentFile
    String threadsThreads
    String numNumEditDist
    Boolean assemblyAssembly
    Boolean localLocalDatabase
    Boolean verboseVerbose
    String debugDebug
  }
  command <<<
    hisatgenotype.py \
      ~{if defined(alignmentAlignmentFile) then ("--alignment-file " +  '"' + alignmentAlignmentFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(numNumEditDist) then ("--num-editdist " +  '"' + numNumEditDist + '"') else ""} \
      ~{true="--assembly" false="" assemblyAssembly} \
      ~{true="--local-database" false="" localLocalDatabase} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""}
  >>>
}