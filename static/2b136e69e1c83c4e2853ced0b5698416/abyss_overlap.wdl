version 1.0

task AbyssOverlap {
  input {
    String? min
    String? max
    String? threads
    String? sample
    Boolean? tred
    Boolean? no_tred
    Boolean? adj
    Boolean? dot
    Boolean? sam
    Boolean? ss
    Boolean? no_ss
    Boolean? verbose
    String? option
  }
  command <<<
    abyss-overlap \
      ~{option} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--tred" false="" tred} \
      ~{true="--no-tred" false="" no_tred} \
      ~{true="--adj" false="" adj} \
      ~{true="--dot" false="" dot} \
      ~{true="--sam" false="" sam} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{true="--verbose" false="" verbose}
  >>>
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
    option: ""
  }
}