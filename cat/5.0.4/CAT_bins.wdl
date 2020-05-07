version 1.0

task CATBins {
  input {
    Boolean bB
    Boolean dD
    Boolean tT
    Boolean sS
    Boolean rR
    Boolean fF
    Boolean oO
    Boolean pP
    Boolean aA
    Boolean pathPathToProdigal
    Boolean pathPathToDiamond
    Boolean noNoStars
    Boolean forceForce
    Boolean quietQuiet
    Boolean noNoLog
    Boolean iIKnowWhatImDoing
    Boolean nN
    Boolean sensitiveSensitive
    Boolean blockBlockSize
    Boolean indexIndexChunks
    Boolean tmpdirTmpdir
    Boolean topTop
  }
  command <<<
    CAT bins \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA} \
      ~{true="--path_to_prodigal" false="" pathPathToProdigal} \
      ~{true="--path_to_diamond" false="" pathPathToDiamond} \
      ~{true="--no_stars" false="" noNoStars} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--no_log" false="" noNoLog} \
      ~{true="--I_know_what_Im_doing" false="" iIKnowWhatImDoing} \
      ~{true="-n" false="" nN} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--block_size" false="" blockBlockSize} \
      ~{true="--index_chunks" false="" indexIndexChunks} \
      ~{true="--tmpdir" false="" tmpdirTmpdir} \
      ~{true="--top" false="" topTop}
  >>>
}