version 1.0

task RunDiscoSnpRad.sh {
  input {
    Boolean gG
    Boolean pP
    Boolean cC
    Boolean lL
    Boolean dD
    Int maxMaxSizeCluster
    Float maxMaxMissing
    Float minMinRank
    Boolean pP
    Boolean dD
    Boolean uU
    Boolean wW
    Boolean vV
  }
  command <<<
    run_discoSnpRad.sh \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP} \
      ~{true="-C" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{true="-D" false="" dD} \
      ~{if defined(maxMaxSizeCluster) then ("--max_size_cluster " +  '"' + maxMaxSizeCluster + '"') else ""} \
      ~{if defined(maxMaxMissing) then ("--max_missing " +  '"' + maxMaxMissing + '"') else ""} \
      ~{if defined(minMinRank) then ("--min_rank " +  '"' + minMinRank + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-u" false="" uU} \
      ~{true="-w" false="" wW} \
      ~{true="-v" false="" vV}
  >>>
}