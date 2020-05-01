version 1.0

task Gottcha.pl {
  input {
    Boolean inputInput
    Boolean databaseDatabase
    Boolean threadsThreads
    Boolean dbDbLevel
    Boolean outdirOutdir
    Boolean prefixPrefix
    Boolean relRelAbu
    Boolean modeMode
    Boolean noNoPlasmidHit
    Boolean bwaBwaOpt
    Boolean stStDir
    Boolean dumpsDumpsAm
    Boolean minMinQ
    Boolean fixFixL
    Boolean asciiAscii
    Boolean minMinCov
    Boolean minMinMlHl
    Boolean cCCov
    Boolean minMinLen
    Boolean minMinHits
  }
  command <<<
    gottcha.pl \
      ~{true="--input" false="" inputInput} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--dbLevel" false="" dbDbLevel} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--relAbu" false="" relRelAbu} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--noPlasmidHit" false="" noNoPlasmidHit} \
      ~{true="--bwaOpt" false="" bwaBwaOpt} \
      ~{true="--stDir" false="" stStDir} \
      ~{true="--dumpSam" false="" dumpsDumpsAm} \
      ~{true="--minQ" false="" minMinQ} \
      ~{true="--fixL" false="" fixFixL} \
      ~{true="--ascii" false="" asciiAscii} \
      ~{true="--minCov" false="" minMinCov} \
      ~{true="--minMLHL" false="" minMinMlHl} \
      ~{true="--cCov" false="" cCCov} \
      ~{true="--minLen" false="" minMinLen} \
      ~{true="--minHits" false="" minMinHits}
  >>>
}