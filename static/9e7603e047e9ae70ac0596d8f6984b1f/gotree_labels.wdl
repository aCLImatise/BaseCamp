version 1.0

task GotreeLabels {
  input {
    Boolean? internal
    Boolean? tips
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree labels \
      ~{if (internal) then "--internal" else ""} \
      ~{if (tips) then "--tips" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    internal: "Internal node labels are listed"
    tips: "Tip labels are listed (--tips=false to cancel) (default true)"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=2) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}