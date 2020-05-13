version 1.0

task Trawler {
  input {
    Boolean directoryDirectory
    Boolean dirDirId
    Boolean xtraXtraLen
    Boolean alignmentsAlignments
    Boolean refRefSpecies
    Boolean clusteringClustering
    Boolean webWeb
  }
  command <<<
    trawler \
      ~{true="-directory" false="" directoryDirectory} \
      ~{true="-dir_id" false="" dirDirId} \
      ~{true="-xtralen" false="" xtraXtraLen} \
      ~{true="-alignments" false="" alignmentsAlignments} \
      ~{true="-ref_species" false="" refRefSpecies} \
      ~{true="-clustering" false="" clusteringClustering} \
      ~{true="-web" false="" webWeb}
  >>>
}