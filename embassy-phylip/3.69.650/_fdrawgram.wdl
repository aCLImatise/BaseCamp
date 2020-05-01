version 1.0

task _fdrawgram {
  input {
    Boolean styleStyle
    Boolean plotterPlotter
    Boolean previewerPreviewer
    Boolean lengthsLengths
    Boolean treeTreeDepth
    Boolean stemStemLength
    Boolean nodeNodeSpace
    Boolean noNoDeposition
  }
  command <<<
    _fdrawgram \
      ~{true="-style" false="" styleStyle} \
      ~{true="-plotter" false="" plotterPlotter} \
      ~{true="-previewer" false="" previewerPreviewer} \
      ~{true="-lengths" false="" lengthsLengths} \
      ~{true="-treedepth" false="" treeTreeDepth} \
      ~{true="-stemlength" false="" stemStemLength} \
      ~{true="-nodespace" false="" nodeNodeSpace} \
      ~{true="-nodeposition" false="" noNoDeposition}
  >>>
}