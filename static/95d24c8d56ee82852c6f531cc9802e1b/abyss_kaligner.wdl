version 1.0

task AbyssKaligner {
  input {
    Boolean? multimap
    Boolean? no_multimap
    String? threads
    Boolean? verbose
    Boolean? no_sam
    Boolean? sam
    Boolean? seq
    Boolean? k
    String k_aligner
    String km_er
    String? option
  }
  command <<<
    abyss-kaligner \
      ~{k_aligner} \
      ~{km_er} \
      ~{option} \
      ~{true="--multimap" false="" multimap} \
      ~{true="--no-multimap" false="" no_multimap} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--no-sam" false="" no_sam} \
      ~{true="--sam" false="" sam} \
      ~{true="--seq" false="" seq} \
      ~{true="-k" false="" k}
  >>>
  parameter_meta {
    multimap: "allow duplicate k-mer in the target"
    no_multimap: "disallow duplicate k-mer in the target"
    threads: "use N threads [2] up to one per query file or if N is 0 use one thread per query file"
    verbose: "display verbose output"
    no_sam: "output the results in KAligner format"
    sam: "output the results in SAM format"
    seq: "print the sequence with the alignments"
    k: ""
    k_aligner: ""
    km_er: ""
    option: ""
  }
}