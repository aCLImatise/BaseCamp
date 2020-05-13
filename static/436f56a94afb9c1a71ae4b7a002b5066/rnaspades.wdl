version 1.0

task Rnaspades.py {
  input {
    String oO
    Boolean ionIonTorrent
    Boolean testTest
    File sS
    File mergedMerged
    Boolean pePe12
    Boolean pePe1
    Boolean pePe2
    Boolean pePeS
    Boolean pePeM
    Boolean pePeOr
    Boolean sS
    File pacPacBio
    File nanoNanoPore
    File trustedTrustedContigs
    File untrustedUntrustedContigs
    File flFlRna
    String ssSs
    String checkpointsCheckpoints
    Boolean continueContinue
    String restartRestartFrom
    Boolean disableDisableGzipOutput
    Boolean disableDisableRr
    File datasetDataset
    Int threadsThreads
    Int memoryMemory
    String tmpTmpDir
    Int kK
    Boolean phredPhredOffset
    String? spadeSpadeSpy
  }
  command <<<
    rnaspades.py \
      ~{spadeSpadeSpy} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--iontorrent" false="" ionIonTorrent} \
      ~{true="--test" false="" testTest} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mergedMerged) then ("--merged " +  '"' + mergedMerged + '"') else ""} \
      ~{true="--pe-12" false="" pePe12} \
      ~{true="--pe-1" false="" pePe1} \
      ~{true="--pe-2" false="" pePe2} \
      ~{true="--pe-s" false="" pePeS} \
      ~{true="--pe-m" false="" pePeM} \
      ~{true="--pe-or" false="" pePeOr} \
      ~{true="--s" false="" sS} \
      ~{if defined(pacPacBio) then ("--pacbio " +  '"' + pacPacBio + '"') else ""} \
      ~{if defined(nanoNanoPore) then ("--nanopore " +  '"' + nanoNanoPore + '"') else ""} \
      ~{if defined(trustedTrustedContigs) then ("--trusted-contigs " +  '"' + trustedTrustedContigs + '"') else ""} \
      ~{if defined(untrustedUntrustedContigs) then ("--untrusted-contigs " +  '"' + untrustedUntrustedContigs + '"') else ""} \
      ~{if defined(flFlRna) then ("--fl-rna " +  '"' + flFlRna + '"') else ""} \
      ~{if defined(ssSs) then ("--ss " +  '"' + ssSs + '"') else ""} \
      ~{if defined(checkpointsCheckpoints) then ("--checkpoints " +  '"' + checkpointsCheckpoints + '"') else ""} \
      ~{true="--continue" false="" continueContinue} \
      ~{if defined(restartRestartFrom) then ("--restart-from " +  '"' + restartRestartFrom + '"') else ""} \
      ~{true="--disable-gzip-output" false="" disableDisableGzipOutput} \
      ~{true="--disable-rr" false="" disableDisableRr} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="--phred-offset" false="" phredPhredOffset}
  >>>
}