version 1.0

task MashtreeClusterpl {
  input {
    Boolean? threshold
    Boolean? nonzero
    Boolean? num_cpus
  }
  command <<<
    mashtree_cluster_pl \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (nonzero) then "--nonzero" else ""} \
      ~{if (num_cpus) then "--numcpus" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: "0.1       Maximum any two genomes can be\\nfrom the seed in a given cluster"
    nonzero: "1e-99     Zero distance is not tolerated\\nin this script. Give a nonzero\\nvalue in case a zero distance\\nis found."
    num_cpus: "1         Not currently used."
  }
  output {
    File out_stdout = stdout()
  }
}