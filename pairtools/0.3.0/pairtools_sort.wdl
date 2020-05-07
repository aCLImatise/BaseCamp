version 1.0

task PairtoolsSort {
  input {
    String outputOutput
    Int nprocNproc
    String tmpdirTmpdir
    String memoryMemory
    String compressCompressProgram
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools sort \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(compressCompressProgram) then ("--compress-program " +  '"' + compressCompressProgram + '"') else ""} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}