version 1.0

task PairtoolsMerge {
  input {
    String outputOutput
    Int maxMaxNMerge
    String tmpdirTmpdir
    String memoryMemory
    String compressCompressProgram
    Int nprocNproc
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools merge \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(maxMaxNMerge) then ("--max-nmerge " +  '"' + maxMaxNMerge + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(compressCompressProgram) then ("--compress-program " +  '"' + compressCompressProgram + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}