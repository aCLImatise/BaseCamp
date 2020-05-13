version 1.0

task Meryl {
  input {
    Boolean mM
    Boolean cC
    Boolean pP
    String sS
    Boolean nN
    String sS
    Boolean fF
    Boolean rR
    Boolean cC
    Boolean lL
    Boolean uU
    Boolean mM
    Boolean cC
    Boolean pP
    String sS
    String oO
    Boolean vV
    String threadsThreads
    String memoryMemory
    String segmentsSegments
    String memoryMemory
    String segmentsSegments
    Boolean configConfigBatch
    String countCountBatch
    Boolean mergeMergeBatch
    Boolean sgeSge
    Boolean sgeSgeBuild
    Boolean sgSgEmerge
    String sS
    String oO
    Boolean vV
    Boolean ddDd
    Boolean dtDt
    Boolean dcDc
    Boolean dhDh
    Boolean sS
    Int? minMin
    Int? minMinExist
    Int? maxMax
    String? addAdd
    String? subSub
    String? absAbs
    String? andAnd
    String? nandNand
    String? orOr
    String? xorXor
  }
  command <<<
    meryl \
      ~{minMin} \
      ~{andAnd} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-C" false="" cC} \
      ~{true="-L" false="" lL} \
      ~{true="-U" false="" uU} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(segmentsSegments) then ("-segments " +  '"' + segmentsSegments + '"') else ""} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(segmentsSegments) then ("-segments " +  '"' + segmentsSegments + '"') else ""} \
      ~{true="-configbatch" false="" configConfigBatch} \
      ~{if defined(countCountBatch) then ("-countbatch " +  '"' + countCountBatch + '"') else ""} \
      ~{true="-mergebatch" false="" mergeMergeBatch} \
      ~{true="-sge" false="" sgeSge} \
      ~{true="-sgebuild" false="" sgeSgeBuild} \
      ~{true="-sgemerge" false="" sgSgEmerge} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-Dd" false="" ddDd} \
      ~{true="-Dt" false="" dtDt} \
      ~{true="-Dc" false="" dcDc} \
      ~{true="-Dh" false="" dhDh} \
      ~{true="-s" false="" sS} \
      ~{minMinExist} \
      ~{nandNand} \
      ~{maxMax} \
      ~{orOr} \
      ~{addAdd} \
      ~{xorXor} \
      ~{subSub} \
      ~{absAbs}
  >>>
}