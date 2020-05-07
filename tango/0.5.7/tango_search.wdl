version 1.0

task TangoSearch {
  input {
    String modeMode
    String cpusCpus
    String blockBlockSize
    String chunksChunks
    String topTop
    String evalueEvalue
    Int minMinLen
    String tmpdirTmpdir
    String? queryQuery
    String? dbfileDbfile
    String? outfileOutfile
  }
  command <<<
    tango search \
      ~{queryQuery} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--blocksize " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(chunksChunks) then ("--chunks " +  '"' + chunksChunks + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{dbfileDbfile} \
      ~{outfileOutfile}
  >>>
}