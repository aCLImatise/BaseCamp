version 1.0

task GhostTreeScaffoldHybridTreeFoundationTree {
  input {
    Boolean graftGraftLevel
    Boolean stderrStderr
    Boolean excludeExcludeIdList
  }
  command <<<
    ghost-tree scaffold hybrid-tree-foundation-tree \
      ~{true="--graft-level" false="" graftGraftLevel} \
      ~{true="--stderr" false="" stderrStderr} \
      ~{true="--exclude-id-list" false="" excludeExcludeIdList}
  >>>
}