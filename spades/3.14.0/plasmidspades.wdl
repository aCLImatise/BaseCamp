version 1.0

task Plasmidspades.py {
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
    Boolean mpMp12
    Boolean mpMp1
    Boolean mpMp2
    Boolean mpMpS
    Boolean mpMpOr
    Boolean hqHqMp12
    Boolean hqHqMp1
    Boolean hqHqMp2
    Boolean hqHqMpS
    Boolean hqHqMpOr
    Boolean nxNxMate1
    Boolean nxNxMate2
    File sangerSanger
    File pacPacBio
    File nanoNanoPore
    File tTSlr
    File trustedTrustedContigs
    File untrustedUntrustedContigs
    Boolean onlyOnlyErrorCorrection
    Boolean onlyOnlyAssembler
    Boolean carefulCareful
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
    Float covCovCutOff
    Boolean phredPhredOffset
    String? spadeSpadeSpy
  }
  command <<<
    plasmidspades.py \
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
      ~{true="--mp-12" false="" mpMp12} \
      ~{true="--mp-1" false="" mpMp1} \
      ~{true="--mp-2" false="" mpMp2} \
      ~{true="--mp-s" false="" mpMpS} \
      ~{true="--mp-or" false="" mpMpOr} \
      ~{true="--hqmp-12" false="" hqHqMp12} \
      ~{true="--hqmp-1" false="" hqHqMp1} \
      ~{true="--hqmp-2" false="" hqHqMp2} \
      ~{true="--hqmp-s" false="" hqHqMpS} \
      ~{true="--hqmp-or" false="" hqHqMpOr} \
      ~{true="--nxmate-1" false="" nxNxMate1} \
      ~{true="--nxmate-2" false="" nxNxMate2} \
      ~{if defined(sangerSanger) then ("--sanger " +  '"' + sangerSanger + '"') else ""} \
      ~{if defined(pacPacBio) then ("--pacbio " +  '"' + pacPacBio + '"') else ""} \
      ~{if defined(nanoNanoPore) then ("--nanopore " +  '"' + nanoNanoPore + '"') else ""} \
      ~{if defined(tTSlr) then ("--tslr " +  '"' + tTSlr + '"') else ""} \
      ~{if defined(trustedTrustedContigs) then ("--trusted-contigs " +  '"' + trustedTrustedContigs + '"') else ""} \
      ~{if defined(untrustedUntrustedContigs) then ("--untrusted-contigs " +  '"' + untrustedUntrustedContigs + '"') else ""} \
      ~{true="--only-error-correction" false="" onlyOnlyErrorCorrection} \
      ~{true="--only-assembler" false="" onlyOnlyAssembler} \
      ~{true="--careful" false="" carefulCareful} \
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
      ~{if defined(covCovCutOff) then ("--cov-cutoff " +  '"' + covCovCutOff + '"') else ""} \
      ~{true="--phred-offset" false="" phredPhredOffset}
  >>>
}