version 1.0

task NwTrimDepth {
  input {
    Boolean? maximum_depth_expressed
  }
  command <<<
    nw_trim depth \
      ~{true="-a" false="" maximum_depth_expressed}
  >>>
  parameter_meta {
    maximum_depth_expressed: ": the maximum depth is expressed in number of ancestors, not distance. Nodes are not shortened, but no node is retained that has more ancestors than the maximum."
  }
}