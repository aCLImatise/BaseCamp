version 1.0

task Blockbusterx {
  input {
    Int? format
    Int? distance
    Int? min_cluster_height
    Int? min_block_height
    Int? scale
    Int? merge
    Int? tag_filter
    Int? print
    File file
  }
  command <<<
    blockbuster_x \
      ~{file} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(distance) then ("-distance " +  '"' + distance + '"') else ""} \
      ~{if defined(min_cluster_height) then ("-minClusterHeight " +  '"' + min_cluster_height + '"') else ""} \
      ~{if defined(min_block_height) then ("-minBlockHeight " +  '"' + min_block_height + '"') else ""} \
      ~{if defined(scale) then ("-scale " +  '"' + scale + '"') else ""} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""} \
      ~{if defined(tag_filter) then ("-tagFilter " +  '"' + tag_filter + '"') else ""} \
      ~{if defined(print) then ("-print " +  '"' + print + '"') else ""}
  >>>
  parameter_meta {
    format: "file format of input file (default: 1)\\n(1) bed\\n(2) segemehl-output"
    distance: "minimum distance between two clusters (default: 30)"
    min_cluster_height: "minimum height of a cluster (default: 10)"
    min_block_height: "minimum height of a block (default: 2)"
    scale: "scale stddev for a single read (default: 0.2)"
    merge: "merge reads with almost similar means (default: 0)"
    tag_filter: "skip tags with expression smaller than this value (default: 0)"
    print: "print out: (1) blocks (2) reads (default: 1)"
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}