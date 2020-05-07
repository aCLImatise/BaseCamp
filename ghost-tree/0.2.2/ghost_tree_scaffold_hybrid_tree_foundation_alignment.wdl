version 1.0

task GhostTreeScaffoldHybridTreeFoundationAlignment {
  input {
    Boolean graftGraftLevel
    Boolean stderrStderr
    Boolean saveSaveFoundationAlignment
    Boolean saveSaveFoundationTree
    Boolean excludeExcludeIdList
  }
  command <<<
    ghost-tree scaffold hybrid-tree-foundation-alignment \
      ~{true="--graft-level" false="" graftGraftLevel} \
      ~{true="--stderr" false="" stderrStderr} \
      ~{true="--save-foundation-alignment" false="" saveSaveFoundationAlignment} \
      ~{true="--save-foundation-tree" false="" saveSaveFoundationTree} \
      ~{true="--exclude-id-list" false="" excludeExcludeIdList}
  >>>
}