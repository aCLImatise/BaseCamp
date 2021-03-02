version 1.0

task Createpriors {
  input {
    Float? alpha
    Float? beta
    Int? num_bins
    String? o
    String? oc
    File fast_a_file
    File wiggle_file
  }
  command <<<
    create_priors \
      ~{fast_a_file} \
      ~{wiggle_file} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""} \
      ~{if defined(o) then ("--o " +  '"' + o + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    alpha: "(default 1.0)"
    beta: "(default 10000.0)"
    num_bins: "(default 100)"
    o: "(default=createpriors_out)"
    oc: "(default=createpriors_out)"
    fast_a_file: ""
    wiggle_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}