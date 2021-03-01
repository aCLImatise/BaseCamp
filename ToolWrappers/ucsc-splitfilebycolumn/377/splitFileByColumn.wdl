version 1.0

task SplitFileByColumn {
  input {
    Int? col
    File? head
    File? tail
    Boolean? chrom_dirs
    String? ending
    Boolean? tab
    String source
  }
  command <<<
    splitFileByColumn \
      ~{source} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{if defined(head) then ("-head " +  '"' + head + '"') else ""} \
      ~{if defined(tail) then ("-tail " +  '"' + tail + '"') else ""} \
      ~{if (chrom_dirs) then "-chromDirs" else ""} \
      ~{if defined(ending) then ("-ending " +  '"' + ending + '"') else ""} \
      ~{if (tab) then "-tab" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    col: "- Use the Nth column value (default: N=1, first column)"
    head: "- Put head in front of each output"
    tail: "- Put tail at end of each output"
    chrom_dirs: "- Split into subdirs of outDir that are distilled from chrom\\nnames, e.g. chr3_random -> outDir/3/chr3_random.XXX ."
    ending: "- Use XXX as the dot-suffix of split files (default: taken\\nfrom source)."
    tab: "- Split by tab characters instead of whitespace."
    source: ""
  }
  output {
    File out_stdout = stdout()
  }
}