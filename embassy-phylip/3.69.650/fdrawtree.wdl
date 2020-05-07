version 1.0

task Fdrawtree {
  input {
    Boolean plotterPlotter
    Boolean previewerPreviewer
    Boolean iterateIterate
    Boolean lengthsLengths
    Boolean labelLabelDirection
    Boolean treeTreeAngle
    Boolean arcArc
    Boolean treeTreeDepth
  }
  command <<<
    fdrawtree \
      ~{true="-plotter" false="" plotterPlotter} \
      ~{true="-previewer" false="" previewerPreviewer} \
      ~{true="-iterate" false="" iterateIterate} \
      ~{true="-lengths" false="" lengthsLengths} \
      ~{true="-labeldirection" false="" labelLabelDirection} \
      ~{true="-treeangle" false="" treeTreeAngle} \
      ~{true="-arc" false="" arcArc} \
      ~{true="-treedepth" false="" treeTreeDepth}
  >>>
}