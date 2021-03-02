version 1.0

task PhylorankBlOptimal {
  input {
    Int? min_dist
    Int? max_dist
    Int? step_size
    String input_tree
    String output_table
  }
  command <<<
    phylorank bl_optimal \
      ~{input_tree} \
      ~{output_table} \
      ~{if defined(min_dist) then ("--min_dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(max_dist) then ("--max_dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(step_size) then ("--step_size " +  '"' + step_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylorank:0.1.9--py_0"
  }
  parameter_meta {
    min_dist: "minimum mean branch length value to evaluate (default:\\n0.5)"
    max_dist: "maximum mean branch length value to evaluate (default:\\n1.2)"
    step_size: "step size of mean branch length values (default:\\n0.025)\\n"
    input_tree: "input tree to calculate branch length distributions"
    output_table: "desired named of output table"
  }
  output {
    File out_stdout = stdout()
  }
}