version 1.0

task Abyssoverlap {
  input {
    Int? min
    Int? max
    Int? threads
    Int? sample
    Boolean? tred
    Boolean? no_tred
    Boolean? adj
    Boolean? dot
    Boolean? sam
    Boolean? ss
    Boolean? no_ss
    Boolean? verbose
  }
  command <<<
    abyss_overlap \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (tred) then "--tred" else ""} \
      ~{if (no_tred) then "--no-tred" else ""} \
      ~{if (adj) then "--adj" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0"
  }
  parameter_meta {
    min: "find matches at least N bp [50]"
    max: "find matches less than N bp [inf]"
    threads: "use N parallel threads [1]"
    sample: "sample the suffix array [1]"
    tred: "remove transitive edges [default]"
    no_tred: "do not remove transitive edges"
    adj: "output the results in adj format"
    dot: "output the results in dot format [default]"
    sam: "output the results in SAM format"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}