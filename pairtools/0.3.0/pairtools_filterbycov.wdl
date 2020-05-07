version 1.0

task PairtoolsFilterbycov {
  input {
    String outputOutput
    String outputOutputHighCov
    String outputOutputUnmapped
    String outputOutputStats
    Int maxMaxCov
    Int maxMaxDist
    Boolean methodMethod
    String sepSep
    String commentCommentChar
    Boolean sendSendHeaderTo
    Int c1C1
    Int c2C2
    Int p1P1
    Int p2P2
    Int s1S1
    Int s2S2
    String unmappedUnmappedChrom
    Boolean markMarkMulti
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools filterbycov \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputHighCov) then ("--output-highcov " +  '"' + outputOutputHighCov + '"') else ""} \
      ~{if defined(outputOutputUnmapped) then ("--output-unmapped " +  '"' + outputOutputUnmapped + '"') else ""} \
      ~{if defined(outputOutputStats) then ("--output-stats " +  '"' + outputOutputStats + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--max-dist " +  '"' + maxMaxDist + '"') else ""} \
      ~{true="--method" false="" methodMethod} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{if defined(commentCommentChar) then ("--comment-char " +  '"' + commentCommentChar + '"') else ""} \
      ~{true="--send-header-to" false="" sendSendHeaderTo} \
      ~{if defined(c1C1) then ("--c1 " +  '"' + c1C1 + '"') else ""} \
      ~{if defined(c2C2) then ("--c2 " +  '"' + c2C2 + '"') else ""} \
      ~{if defined(p1P1) then ("--p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(p2P2) then ("--p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(s1S1) then ("--s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("--s2 " +  '"' + s2S2 + '"') else ""} \
      ~{if defined(unmappedUnmappedChrom) then ("--unmapped-chrom " +  '"' + unmappedUnmappedChrom + '"') else ""} \
      ~{true="--mark-multi" false="" markMarkMulti} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}