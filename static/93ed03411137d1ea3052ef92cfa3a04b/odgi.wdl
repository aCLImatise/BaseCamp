version 1.0

task Odgi {
  input {
    Boolean buildBuild
    Boolean statsStats
    Boolean sortSort
    Boolean viewView
    Boolean kmKmErs
    Boolean unitUnitIg
    Boolean vizViz
    Boolean pathsPaths
    Boolean prunePrune
    Boolean simplifySimplify
    Boolean subsetSubset
    Boolean binBin
    Boolean matrixMatrix
    Boolean chopChop
    Boolean layoutLayout
    Boolean flattenFlatten
    Boolean breakBreak
    Boolean pathPathIndex
    Boolean panPanPos
    Boolean serverServer
    Boolean testTest
    String? commandCommand
  }
  command <<<
    odgi \
      ~{commandCommand} \
      ~{true="-- build" false="" buildBuild} \
      ~{true="-- stats" false="" statsStats} \
      ~{true="-- sort" false="" sortSort} \
      ~{true="-- view" false="" viewView} \
      ~{true="-- kmers" false="" kmKmErs} \
      ~{true="-- unitig" false="" unitUnitIg} \
      ~{true="-- viz" false="" vizViz} \
      ~{true="-- paths" false="" pathsPaths} \
      ~{true="-- prune" false="" prunePrune} \
      ~{true="-- simplify" false="" simplifySimplify} \
      ~{true="-- subset" false="" subsetSubset} \
      ~{true="-- bin" false="" binBin} \
      ~{true="-- matrix" false="" matrixMatrix} \
      ~{true="-- chop" false="" chopChop} \
      ~{true="-- layout" false="" layoutLayout} \
      ~{true="-- flatten" false="" flattenFlatten} \
      ~{true="-- break" false="" breakBreak} \
      ~{true="-- pathindex" false="" pathPathIndex} \
      ~{true="-- panpos" false="" panPanPos} \
      ~{true="-- server" false="" serverServer} \
      ~{true="-- test" false="" testTest}
  >>>
}