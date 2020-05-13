version 1.0

task BICseqOneSample.pl {
  input {
    Float lambdaLambda
    String tmpTmp
    String figFig
    String titleTitle
    Boolean nrmNrm
    Boolean bootstrapBootstrap
    Boolean noNoScale
    Boolean strictStrict
  }
  command <<<
    BICseqOneSample.pl \
      ~{if defined(lambdaLambda) then ("--lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{if defined(figFig) then ("--fig " +  '"' + figFig + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--nrm" false="" nrmNrm} \
      ~{true="--bootstrap" false="" bootstrapBootstrap} \
      ~{true="--noscale" false="" noNoScale} \
      ~{true="--strict" false="" strictStrict}
  >>>
}