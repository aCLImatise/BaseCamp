version 1.0

task RgtVizHeatmap {
  input {
    Boolean oO
    Boolean gaGa
    Boolean tT
    Boolean centerCenter
    Boolean sortSort
    Boolean colCol
    Boolean cC
    Boolean rowRow
    Boolean eE
    Boolean rsRs
    Boolean ssSs
    Boolean bsBs
    Boolean organismOrganism
    Boolean colorColor
    Boolean logLog
    Boolean mpMp
    Boolean showShow
    Boolean tableTable
    String? inputInput
  }
  command <<<
    rgt-viz heatmap \
      ~{inputInput} \
      ~{true="-o" false="" oO} \
      ~{true="-ga" false="" gaGa} \
      ~{true="-t" false="" tT} \
      ~{true="-center" false="" centerCenter} \
      ~{true="-sort" false="" sortSort} \
      ~{true="-col" false="" colCol} \
      ~{true="-c" false="" cC} \
      ~{true="-row" false="" rowRow} \
      ~{true="-e" false="" eE} \
      ~{true="-rs" false="" rsRs} \
      ~{true="-ss" false="" ssSs} \
      ~{true="-bs" false="" bsBs} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-color" false="" colorColor} \
      ~{true="-log" false="" logLog} \
      ~{true="-mp" false="" mpMp} \
      ~{true="-show" false="" showShow} \
      ~{true="-table" false="" tableTable}
  >>>
}