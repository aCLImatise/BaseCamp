version 1.0

task Rbcavity {
  input {
    String receptorReceptorParam
    Boolean writeWriteDockingCavities
    Boolean readReadDockingCavities
    Boolean writeWriteInsightIiGrids
    Boolean writeWritePsfCrd
    String listListAtomsDist
    Boolean printPrintSite
    String borderBorder
    Boolean writeWriteMoeGrid
  }
  command <<<
    rbcavity \
      ~{if defined(receptorReceptorParam) then ("--receptor-param " +  '"' + receptorReceptorParam + '"') else ""} \
      ~{true="--write-docking-cavities" false="" writeWriteDockingCavities} \
      ~{true="--read-docking-cavities" false="" readReadDockingCavities} \
      ~{true="--write-insightii-grids" false="" writeWriteInsightIiGrids} \
      ~{true="--write-psf-crd" false="" writeWritePsfCrd} \
      ~{if defined(listListAtomsDist) then ("--list-atoms-dist " +  '"' + listListAtomsDist + '"') else ""} \
      ~{true="--print-site" false="" printPrintSite} \
      ~{if defined(borderBorder) then ("--border " +  '"' + borderBorder + '"') else ""} \
      ~{true="--write-moe-grid" false="" writeWriteMoeGrid}
  >>>
}