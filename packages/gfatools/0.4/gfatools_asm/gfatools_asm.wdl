version 1.0

task GfatoolsAsm {
  input {
    Int? transitive_reduction_fuzzy
    Array[Int] cut_tips_length
    Array[Int] pop_bubbles_max
    Array[Int] pop_bubbles_along
    Array[Float] cut_short_ratio
    Array[Float] cut_overlaps_topology
    Boolean? generate_unitigs
    Int? verbose_level
    String in_dot_gfa
  }
  command <<<
    gfatools asm \
      ~{in_dot_gfa} \
      ~{if defined(transitive_reduction_fuzzy) then ("-r " +  '"' + transitive_reduction_fuzzy + '"') else ""} \
      ~{if defined(cut_tips_length) then ("-t " +  '"' + cut_tips_length + '"') else ""} \
      ~{if defined(pop_bubbles_max) then ("-b " +  '"' + pop_bubbles_max + '"') else ""} \
      ~{if defined(pop_bubbles_along) then ("-B " +  '"' + pop_bubbles_along + '"') else ""} \
      ~{if defined(cut_short_ratio) then ("-o " +  '"' + cut_short_ratio + '"') else ""} \
      ~{if defined(cut_overlaps_topology) then ("-c " +  '"' + cut_overlaps_topology + '"') else ""} \
      ~{if (generate_unitigs) then "-u" else ""} \
      ~{if defined(verbose_level) then ("-v " +  '"' + verbose_level + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.4--hed695b0_0"
  }
  parameter_meta {
    transitive_reduction_fuzzy: "transitive reduction (fuzzy length)"
    cut_tips_length: "cut tips (tip seg count, tip length [inf])"
    pop_bubbles_max: "pop bubbles (max radius, max deletions [inf])"
    pop_bubbles_along: "pop bubbles along with small tips (max radius, max del [inf])"
    cut_short_ratio: "cut short overlaps (ratio to the longest overlap, overlap length [0])"
    cut_overlaps_topology: "cut overlaps, topology aware (ratio, tip seg count [3], tip length [inf])"
    generate_unitigs: "generate unitigs"
    verbose_level: "verbose level [2]"
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}