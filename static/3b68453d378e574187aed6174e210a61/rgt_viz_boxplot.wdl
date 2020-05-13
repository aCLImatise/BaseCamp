version 1.0

task RgtVizBoxplot {
  input {
    Boolean oO
    Boolean tT
    Boolean gG
    Boolean cC
    Boolean sS
    Boolean scolScol
    Boolean nNLog
    Boolean colorColor
    Boolean pwPw
    Boolean phPh
    Boolean nqNqN
    Boolean dfDf
    Boolean ylimYlim
    Boolean pP
    Boolean showShow
    Boolean tableTable
    String? inputInput
  }
  command <<<
    rgt-viz boxplot \
      ~{inputInput} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-scol" false="" scolScol} \
      ~{true="-nlog" false="" nNLog} \
      ~{true="-color" false="" colorColor} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-ph" false="" phPh} \
      ~{true="-nqn" false="" nqNqN} \
      ~{true="-df" false="" dfDf} \
      ~{true="-ylim" false="" ylimYlim} \
      ~{true="-p" false="" pP} \
      ~{true="-show" false="" showShow} \
      ~{true="-table" false="" tableTable}
  >>>
}