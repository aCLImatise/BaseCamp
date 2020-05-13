version 1.0

task Abricate {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Boolean checkCheck
    Boolean threadsThreads
    Boolean fofFofN
    Boolean setupSetupDb
    Boolean listList
    Boolean datadirDatadir
    Boolean dbDb
    Boolean noheaderNoheader
    Boolean csvCsv
    Boolean noNoPath
    Boolean miniMiniD
    Boolean minMinCov
    Boolean summarySummary
  }
  command <<<
    abricate \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--fofn" false="" fofFofN} \
      ~{true="--setupdb" false="" setupSetupDb} \
      ~{true="--list" false="" listList} \
      ~{true="--datadir" false="" datadirDatadir} \
      ~{true="--db" false="" dbDb} \
      ~{true="--noheader" false="" noheaderNoheader} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--nopath" false="" noNoPath} \
      ~{true="--minid" false="" miniMiniD} \
      ~{true="--mincov" false="" minMinCov} \
      ~{true="--summary" false="" summarySummary}
  >>>
}