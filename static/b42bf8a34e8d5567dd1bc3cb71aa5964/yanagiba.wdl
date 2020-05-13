version 1.0

task Yanagiba {
  input {
    String inInFile
    String summarySummaryFile
    String outfileOutfile
    Int minMinLen
    Int minMinQual
    String headHeadTrim
    String tailTailTrim
    Boolean forceForceUnique
  }
  command <<<
    yanagiba \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(summarySummaryFile) then ("--summaryfile " +  '"' + summarySummaryFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(headHeadTrim) then ("--headtrim " +  '"' + headHeadTrim + '"') else ""} \
      ~{if defined(tailTailTrim) then ("--tailtrim " +  '"' + tailTailTrim + '"') else ""} \
      ~{true="--forceunique" false="" forceForceUnique}
  >>>
}