version 1.0

task ArticMakeDepthMask {
  input {
    Boolean ignoreIgnoreDeletions
  }
  command <<<
    artic_make_depth_mask \
      ~{true="--ignore-deletions" false="" ignoreIgnoreDeletions}
  >>>
}