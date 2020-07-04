version 1.0

task SplitFileByColumn {
  input {
    String? col
    File? head
    File? tail
    Boolean? chrom_dirs
    String? ending
    Boolean? tab
    String source
    String outdir
  }
  command <<<
    splitFileByColumn \
      ~{source} \
      ~{outdir} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{if defined(head) then ("-head " +  '"' + head + '"') else ""} \
      ~{if defined(tail) then ("-tail " +  '"' + tail + '"') else ""} \
      ~{true="-chromDirs" false="" chrom_dirs} \
      ~{if defined(ending) then ("-ending " +  '"' + ending + '"') else ""} \
      ~{true="-tab" false="" tab}
  >>>
  parameter_meta {
    col: "- Use the Nth column value (default: N=1, first column)"
    head: "- Put head in front of each output"
    tail: "- Put tail at end of each output"
    chrom_dirs: "- Split into subdirs of outDir that are distilled from chrom names, e.g. chr3_random -> outDir/3/chr3_random.XXX ."
    ending: "- Use XXX as the dot-suffix of split files (default: taken from source)."
    tab: "- Split by tab characters instead of whitespace."
    source: ""
    outdir: ""
  }
}