version 1.0

task GhostTreeExtensions {
  input {
    String? groupGroupExtensions
  }
  command <<<
    ghost-tree extensions \
      ~{groupGroupExtensions}
  >>>
}