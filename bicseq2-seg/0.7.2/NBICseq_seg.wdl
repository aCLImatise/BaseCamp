version 1.0

task NBICseqSeg.pl {
  input {
    Float lambdaLambda
    String tmpTmp
    String figFig
    String titleTitle
    Boolean nrmNrm
    Boolean bootstrapBootstrap
    Boolean noNoScale
    Boolean strictStrict
    Boolean controlControl
    Boolean detailDetail
    String? configConfigFile
    String? outputOutput
  }
  command <<<
    NBICseq-seg.pl \
      ~{configConfigFile} \
      ~{if defined(lambdaLambda) then ("--lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{if defined(figFig) then ("--fig " +  '"' + figFig + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--nrm" false="" nrmNrm} \
      ~{true="--bootstrap" false="" bootstrapBootstrap} \
      ~{true="--noscale" false="" noNoScale} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--control" false="" controlControl} \
      ~{true="--detail" false="" detailDetail} \
      ~{outputOutput}
  >>>
}