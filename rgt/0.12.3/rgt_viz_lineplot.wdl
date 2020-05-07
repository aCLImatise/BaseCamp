version 1.0

task RgtVizLineplot {
  input {
    String oO
    Boolean gaGa
    Boolean tT
    Boolean centerCenter
    Boolean gG
    Boolean rowRow
    Boolean colCol
    Boolean cC
    Boolean eE
    Boolean rsRs
    Boolean ssSs
    Boolean bsBs
    Boolean logLog
    Boolean scolScol
    Boolean sSRow
    Boolean organismOrganism
    Boolean colorColor
    Boolean pwPw
    Boolean phPh
    Boolean testTest
    Boolean mpMp
    Boolean dfDf
    Boolean dftDft
    Boolean showShow
    Boolean tableTable
    Boolean senseSense
    Boolean strandStrand
    Boolean averageAverage
    Boolean flipFlipNegative
    Boolean extendExtendOutside
    Boolean addAddRegionNumber
    String? inputInput
  }
  command <<<
    rgt-viz lineplot \
      ~{inputInput} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-ga" false="" gaGa} \
      ~{true="-t" false="" tT} \
      ~{true="-center" false="" centerCenter} \
      ~{true="-g" false="" gG} \
      ~{true="-row" false="" rowRow} \
      ~{true="-col" false="" colCol} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="-rs" false="" rsRs} \
      ~{true="-ss" false="" ssSs} \
      ~{true="-bs" false="" bsBs} \
      ~{true="-log" false="" logLog} \
      ~{true="-scol" false="" scolScol} \
      ~{true="-srow" false="" sSRow} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-color" false="" colorColor} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-ph" false="" phPh} \
      ~{true="-test" false="" testTest} \
      ~{true="-mp" false="" mpMp} \
      ~{true="-df" false="" dfDf} \
      ~{true="-dft" false="" dftDft} \
      ~{true="-show" false="" showShow} \
      ~{true="-table" false="" tableTable} \
      ~{true="-sense" false="" senseSense} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-average" false="" averageAverage} \
      ~{true="-flip_negative" false="" flipFlipNegative} \
      ~{true="-extend_outside" false="" extendExtendOutside} \
      ~{true="-add_region_number" false="" addAddRegionNumber}
  >>>
}