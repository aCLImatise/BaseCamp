version 1.0

task Kissnp2 {
  input {
    Boolean? max_ambigous_in_del
    Boolean? arg_conserve_complexity
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
    Boolean? bfs_max_depth
    Boolean? bfs_max_breadth
    Boolean? max_truncated_path_length_difference
  }
  command <<<
    kissnp2 \
      ~{true="-max_ambigous_indel" false="" max_ambigous_in_del} \
      ~{true="-l" false="" arg_conserve_complexity} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version} \
      ~{true="-bfs-max-depth" false="" bfs_max_depth} \
      ~{true="-bfs-max-breadth" false="" bfs_max_breadth} \
      ~{true="-max_truncated_path_length_difference" false="" max_truncated_path_length_difference}
  >>>
  parameter_meta {
    max_ambigous_in_del: "(1 arg) :    Maximal size of ambiguity of INDELs. INDELS whose ambiguity is higher than this value are not output  [default '20']"
    arg_conserve_complexity: "(0 arg) :    conserve low complexity SNPs"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    bfs_max_depth: "(1 arg) :    maximum depth for BFS  [default '200']"
    bfs_max_breadth: "(1 arg) :    maximum breadth for BFS  [default '20']"
    max_truncated_path_length_difference: "(1 arg) :    Longest accepted difference length between two paths of a truncated bubbleS  [default '0']"
  }
}