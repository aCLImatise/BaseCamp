version 1.0

task AtlasDiff {
  input {
    Int? km_er
    Directory? tmp
    Boolean? keep_tmp
    Directory? skeleton_dir
    Int? mc_cortex_three_one_path
    String? var_5
    String? expected_depth
    Array[String] seq
    String? ctx
    Boolean? quiet
    Boolean? add
    String sample
    String graph
    String memory__memory
  }
  command <<<
    atlas diff \
      ~{sample} \
      ~{graph} \
      ~{memory__memory} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if defined(skeleton_dir) then ("--skeleton_dir " +  '"' + skeleton_dir + '"') else ""} \
      ~{if defined(mc_cortex_three_one_path) then ("--mccortex31_path " +  '"' + mc_cortex_three_one_path + '"') else ""} \
      ~{if defined(var_5) then ("--threads " +  '"' + var_5 + '"') else ""} \
      ~{if defined(expected_depth) then ("--expected_depth " +  '"' + expected_depth + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ctx) then ("--ctx " +  '"' + ctx + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (add) then "--add" else ""}
  >>>
  parameter_meta {
    km_er: "kmer length (default:21)"
    tmp: "tmp directory (default: /tmp/)"
    keep_tmp: "Dont remove tmp files"
    skeleton_dir: "directory for skeleton binaries"
    mc_cortex_three_one_path: "Path to mccortex31. Default mccortex31"
    var_5: ""
    expected_depth: "expected depth"
    seq: "sequence files (fasta,fastq,bam)"
    ctx: "cortex graph binary"
    quiet: "do not output warnings to stderr"
    add: "after comparing, add the new sample to the graph"
    sample: "sample id"
    graph: "The graph to compare new sample against"
    memory__memory: "-m MEMORY, --memory MEMORY"
  }
  output {
    File out_stdout = stdout()
  }
}