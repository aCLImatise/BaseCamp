version 1.0

task AtlasDiff {
  input {
    String? km_er
    String? tmp
    Boolean? keep_tmp
    String? skeleton_dir
    String? mc_cortex_three_one_path
    String? threads
    String? memory
    String? expected_depth
    Array[String] seq
    String? ctx
    Boolean? quiet
    Boolean? add
    String sample
    String graph
  }
  command <<<
    atlas diff \
      ~{sample} \
      ~{graph} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{if defined(skeleton_dir) then ("--skeleton_dir " +  '"' + skeleton_dir + '"') else ""} \
      ~{if defined(mc_cortex_three_one_path) then ("--mccortex31_path " +  '"' + mc_cortex_three_one_path + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(expected_depth) then ("--expected_depth " +  '"' + expected_depth + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ctx) then ("--ctx " +  '"' + ctx + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--add" false="" add}
  >>>
  parameter_meta {
    km_er: "kmer length (default:21)"
    tmp: "tmp directory (default: /tmp/)"
    keep_tmp: "Dont remove tmp files"
    skeleton_dir: "directory for skeleton binaries"
    mc_cortex_three_one_path: "Path to mccortex31. Default mccortex31"
    threads: "threads"
    memory: "memory for graph constuction"
    expected_depth: "expected depth"
    seq: "sequence files (fasta,fastq,bam)"
    ctx: "cortex graph binary"
    quiet: "do not output warnings to stderr"
    add: "after comparing, add the new sample to the graph"
    sample: "sample id"
    graph: "The graph to compare new sample against"
  }
}