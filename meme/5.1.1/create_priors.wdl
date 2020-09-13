version 1.0

task Createpriors {
  input {
    Float? alpha
    Float? beta
    Int? num_bins
    String? o
    String? oc
    Boolean? parse_genomic_coord
    Boolean? psp
    Boolean? verbosity
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
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if (parse_genomic_coord) then "--parse-genomic-coord" else ""} \
      ~{if (psp) then "--psp" else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  parameter_meta {
    alpha: "(default 1.0)"
    beta: "(default 10000.0)"
    num_bins: "(default 100)"
    o: "(default=createpriors_out)"
    oc: "(default=createpriors_out)"
    parse_genomic_coord: ""
    psp: ""
    verbosity: "[1|2|3|4] (default 2)"
    fast_a_file: ""
    wiggle_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}