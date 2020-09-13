version 1.0

task MakeHKY {
  input {
    Float? gc
    Boolean? pi
    Int? branch_length
    Int? tree
    String below_dot
  }
  command <<<
    makeHKY \
      ~{below_dot} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if (pi) then "--pi" else ""} \
      ~{if defined(branch_length) then ("--branch-length " +  '"' + branch_length + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  parameter_meta {
    gc: "Define base composition according to specified G+C composition,\\nassuming P(A)=P(T) and P(C)=P(G).  Default is 0.4."
    pi: "<pi_A,pi_C,pi_G,pi_T>\\nOverride --gc and define base composition explicitly.  Values will\\nbe renormalized to ensure they sum exactly to one."
    branch_length: "Assume a tree consisting of a single branch of specified length.\\nDefault value is 1."
    tree: "Override --branch-length and use specified tree."
    below_dot: "OPTIONS:"
  }
  output {
    File out_stdout = stdout()
  }
}