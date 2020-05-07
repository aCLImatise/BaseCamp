version 1.0

task CATAddNames {
  input {
    Boolean iI
    Boolean oO
    Boolean tT
    Boolean onlyOnlyOfficial
    Boolean excludeExcludeScores
    Boolean forceForce
    Boolean quietQuiet
  }
  command <<<
    CAT add_names \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="--only_official" false="" onlyOnlyOfficial} \
      ~{true="--exclude_scores" false="" excludeExcludeScores} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}