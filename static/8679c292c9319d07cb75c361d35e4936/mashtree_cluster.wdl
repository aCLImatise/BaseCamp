version 1.0

task MashtreeCluster.pl {
  input {
    Boolean? threshold
    Boolean? nonzero
    Boolean? num_cpus
    File file_dot_sql
  }
  command <<<
    mashtree_cluster.pl \
      ~{file_dot_sql} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--nonzero" false="" nonzero} \
      ~{true="--numcpus" false="" num_cpus}
  >>>
  parameter_meta {
    threshold: "0.1       Maximum any two genomes can be from the seed in a given cluster"
    nonzero: "1e-99     Zero distance is not tolerated in this script. Give a nonzero value in case a zero distance is found."
    num_cpus: "1         Not currently used."
    file_dot_sql: ""
  }
}