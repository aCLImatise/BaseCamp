version 1.0

task Gretel {
  input {
    String startStart
    String endEnd
    File pathsPaths
    String masterMaster
    String gapGapChar
    String delDelChar
    Boolean quietQuiet
    String outOut
    String threadsThreads
    String debugDebugReads
    String debugDebugPos
    String debugDebugHpOs
    String dumpDumpMatrix
    String dumpDumpSnps
    Boolean pepperPepper
  }
  command <<<
    gretel \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(pathsPaths) then ("--paths " +  '"' + pathsPaths + '"') else ""} \
      ~{if defined(masterMaster) then ("--master " +  '"' + masterMaster + '"') else ""} \
      ~{if defined(gapGapChar) then ("--gapchar " +  '"' + gapGapChar + '"') else ""} \
      ~{if defined(delDelChar) then ("--delchar " +  '"' + delDelChar + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(debugDebugReads) then ("--debugreads " +  '"' + debugDebugReads + '"') else ""} \
      ~{if defined(debugDebugPos) then ("--debugpos " +  '"' + debugDebugPos + '"') else ""} \
      ~{if defined(debugDebugHpOs) then ("--debughpos " +  '"' + debugDebugHpOs + '"') else ""} \
      ~{if defined(dumpDumpMatrix) then ("--dumpmatrix " +  '"' + dumpDumpMatrix + '"') else ""} \
      ~{if defined(dumpDumpSnps) then ("--dumpsnps " +  '"' + dumpDumpSnps + '"') else ""} \
      ~{true="--pepper" false="" pepperPepper}
  >>>
}