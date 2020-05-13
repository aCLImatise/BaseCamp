version 1.0

task Mlst {
  input {
    Boolean checkCheck
    Boolean quietQuiet
    Boolean threadsThreads
    Boolean debugDebug
    Boolean schemeScheme
    Boolean listList
    Boolean longLongList
    Boolean excludeExclude
    Boolean csvCsv
    Boolean jsonJson
    Boolean labelLabel
    Boolean noNoPath
    Boolean novelNovel
    Boolean legacyLegacy
    Boolean miniMiniD
    Boolean minMinCov
    Boolean minMinScore
    Boolean blastBlastDb
    Boolean datadirDatadir
  }
  command <<<
    mlst \
      ~{true="--check" false="" checkCheck} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--scheme" false="" schemeScheme} \
      ~{true="--list" false="" listList} \
      ~{true="--longlist" false="" longLongList} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--label" false="" labelLabel} \
      ~{true="--nopath" false="" noNoPath} \
      ~{true="--novel" false="" novelNovel} \
      ~{true="--legacy" false="" legacyLegacy} \
      ~{true="--minid" false="" miniMiniD} \
      ~{true="--mincov" false="" minMinCov} \
      ~{true="--minscore" false="" minMinScore} \
      ~{true="--blastdb" false="" blastBlastDb} \
      ~{true="--datadir" false="" datadirDatadir}
  >>>
}