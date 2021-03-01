version 1.0

task CONSENTcorrect {
  input {
    Int? window_size
    Int? min_support
    Int? max_support
    Int? mer_size
    Int? solid
    Int? anchor_support
    Int? min_anchors
    Int? window_overlap
    Int? nproc
    Int? minimap_index
    File? tmpdir
  }
  command <<<
    CONSENT_correct \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(min_support) then ("--minSupport " +  '"' + min_support + '"') else ""} \
      ~{if defined(max_support) then ("--maxSupport " +  '"' + max_support + '"') else ""} \
      ~{if defined(mer_size) then ("--merSize " +  '"' + mer_size + '"') else ""} \
      ~{if defined(solid) then ("--solid " +  '"' + solid + '"') else ""} \
      ~{if defined(anchor_support) then ("--anchorSupport " +  '"' + anchor_support + '"') else ""} \
      ~{if defined(min_anchors) then ("--minAnchors " +  '"' + min_anchors + '"') else ""} \
      ~{if defined(window_overlap) then ("--windowOverlap " +  '"' + window_overlap + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(minimap_index) then ("--minimapIndex " +  '"' + minimap_index + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/consent:2.2.2--h8b12597_0"
  }
  parameter_meta {
    window_size: ":      Size of the windows to process. (default: 500)"
    min_support: ":      Minimum support to consider a window for correction. (default: 3)"
    max_support: ":      Maximum number of overlaps to include in a pile. (default: 150)"
    mer_size: ":         k-mer size for chaining and polishing. (default: 9)"
    solid: ":           Minimum number of occurrences to consider a k-mer as solid during polishing. (default: 4)"
    anchor_support: ":   Minimum number of sequences supporting (Ai) - (Ai+1) to keep the two anchors in the chaining. (default: 8)"
    min_anchors: ":      Minimum number of anchors in a window to allow consensus computation. (default: 10)"
    window_overlap: ":   Overlap size between consecutive windows. (default: 50)"
    nproc: ":           Number of processes to run in parallel (default: number of cores)."
    minimap_index: ":    Split minimap2 index every INT input bases (default: 500M)."
    tmpdir: ":    Path where to store the temporary files (default: working directory)."
  }
  output {
    File out_stdout = stdout()
  }
}