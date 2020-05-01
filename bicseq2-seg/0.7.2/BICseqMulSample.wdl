version 1.0

task BICseqMulSample.pl {
  input {
    Float lambdaLambda
    String tmpTmp
    String figFig
    String titleTitle
    Boolean bootstrapBootstrap
    Boolean noNoScale
    Boolean strictStrict
    Boolean detailDetail
  }
  command <<<
    BICseqMulSample.pl \
      ~{if defined(lambdaLambda) then ("--lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{if defined(figFig) then ("--fig " +  '"' + figFig + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--bootstrap" false="" bootstrapBootstrap} \
      ~{true="--noscale" false="" noNoScale} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--detail" false="" detailDetail}
  >>>
}