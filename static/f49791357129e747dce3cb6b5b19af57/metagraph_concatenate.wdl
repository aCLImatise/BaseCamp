version 1.0

task MetagraphConcatenate {
  input {
    Boolean? graph
    Boolean? in_file_base
    Boolean? len_suffix
    Boolean? mode
    Boolean? no_postprocessing
    Boolean? parallel
    Boolean? verbose
    String? o
  }
  command <<<
    metagraph concatenate \
      ~{if (graph) then "--graph" else ""} \
      ~{if (in_file_base) then "--infile-base" else ""} \
      ~{if (len_suffix) then "--len-suffix" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (no_postprocessing) then "--no-postprocessing" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    graph: "[STR]        graph representation: succinct / bitmap [succinct]"
    in_file_base: "[STR]  load graph chunks from files '<infile-base>.<suffix>.<type>.chunk' []"
    len_suffix: "[INT]   iterate all possible suffixes of the length given [0]"
    mode: "k-mer indexing mode: basic / canonical / primary [basic]"
    no_postprocessing: "do not erase redundant dummy edges after concatenation [off]"
    parallel: "[INT]     use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}