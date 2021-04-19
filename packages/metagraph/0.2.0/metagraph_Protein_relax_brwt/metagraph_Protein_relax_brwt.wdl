version 1.0

task MetagraphProteinRelaxBrwt {
  input {
    File? outfile_base
    Boolean? relax_arity
    Boolean? parallel
    Boolean? verbose
    String annotator
  }
  command <<<
    metagraph_Protein relax_brwt \
      ~{annotator} \
      ~{if (outfile_base) then "--outfile-base" else ""} \
      ~{if (relax_arity) then "--relax-arity" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    outfile_base: "[STR] basename of output file []"
    relax_arity: "[INT]  relax brwt tree to optimize arity limited to this number [10]"
    parallel: "[INT]     use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    annotator: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_base = "${in_outfile_base}"
  }
}