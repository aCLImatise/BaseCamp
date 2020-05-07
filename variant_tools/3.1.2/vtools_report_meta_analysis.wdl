version 1.0

task VtoolsReportMetaAnalysis {
  input {
    String betaBeta
    String pvalPval
    String seSe
    String sizeSize
    Array[String]+ linkLink
    String methodMethod
    String toToDb
    Boolean vV
    File? fileFile
  }
  command <<<
    vtools_report meta_analysis \
      ~{fileFile} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{if defined(seSe) then ("--se " +  '"' + seSe + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(toToDb) then ("--to_db " +  '"' + toToDb + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}