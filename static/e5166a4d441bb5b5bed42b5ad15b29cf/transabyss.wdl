version 1.0

task Transabyss {
  input {
    Array[File]+ seSe
    Array[File]+ pePe
    Boolean ssSs
    File outdirOutdir
    String nameName
    String stageStage
    Int lengthLength
    Boolean cleanupCleanup
    Int threadsThreads
    Int mpiMpi
    Int kmKmEr
    Int covCov
    Int erosEros
    Int sSEros
    Int qQEnds
    Int qQAll
    Int pairsPairs
    Int seedSeed
    Int gGSim
    Int inInDel
    Int islandIsland
    Boolean useUseBlat
    Float pidPid
    Float walkWalk
    Boolean noNoRef
  }
  command <<<
    transabyss \
      ~{if defined(seSe) then ("--se " +  '"' + seSe + '"') else ""} \
      ~{if defined(pePe) then ("--pe " +  '"' + pePe + '"') else ""} \
      ~{true="--SS" false="" ssSs} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(stageStage) then ("--stage " +  '"' + stageStage + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--cleanup" false="" cleanupCleanup} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(mpiMpi) then ("--mpi " +  '"' + mpiMpi + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(covCov) then ("--cov " +  '"' + covCov + '"') else ""} \
      ~{if defined(erosEros) then ("--eros " +  '"' + erosEros + '"') else ""} \
      ~{if defined(sSEros) then ("--seros " +  '"' + sSEros + '"') else ""} \
      ~{if defined(qQEnds) then ("--qends " +  '"' + qQEnds + '"') else ""} \
      ~{if defined(qQAll) then ("--qall " +  '"' + qQAll + '"') else ""} \
      ~{if defined(pairsPairs) then ("--pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(gGSim) then ("--gsim " +  '"' + gGSim + '"') else ""} \
      ~{if defined(inInDel) then ("--indel " +  '"' + inInDel + '"') else ""} \
      ~{if defined(islandIsland) then ("--island " +  '"' + islandIsland + '"') else ""} \
      ~{true="--useblat" false="" useUseBlat} \
      ~{if defined(pidPid) then ("--pid " +  '"' + pidPid + '"') else ""} \
      ~{if defined(walkWalk) then ("--walk " +  '"' + walkWalk + '"') else ""} \
      ~{true="--noref" false="" noNoRef}
  >>>
}