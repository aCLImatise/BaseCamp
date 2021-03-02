version 1.0

task NwTrimDepth {
  input {
    Boolean? maximum_depth_expressed
  }
  command <<<
    nw_trim depth \
      ~{if (maximum_depth_expressed) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maximum_depth_expressed: ": the maximum depth is expressed in number of ancestors, not distance.\\nNodes are not shortened, but no node is retained that has more\\nancestors than the maximum."
  }
  output {
    File out_stdout = stdout()
  }
}