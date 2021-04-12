version 1.0

task Rwr {
  input {
    File? network
    Int? prob
    File? directed_network
    Float? weighted_network
    Float? weighted_gene
  }
  command <<<
    rwr \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""} \
      ~{if defined(directed_network) then ("--directed_network " +  '"' + directed_network + '"') else ""} \
      ~{if defined(weighted_network) then ("--weighted_network " +  '"' + weighted_network + '"') else ""} \
      ~{if defined(weighted_gene) then ("--weighted_gene " +  '"' + weighted_gene + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    network: "restart probability (default: 0.5)"
    prob: "probability cutoff (defalut: 0.01)"
    directed_network: "input network is directed (defalut: the input network is undirected)"
    weighted_network: "edge weights of network will be considered (defalut: all edge weights of network are set to 1.0)"
    weighted_gene: "weights of seed genes will be considered (defalut: all weights of seed genes are set to 1.0)"
  }
  output {
    File out_stdout = stdout()
    File out_directed_network = "${in_directed_network}"
  }
}