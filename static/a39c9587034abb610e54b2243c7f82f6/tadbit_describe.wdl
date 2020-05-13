version 1.0

task TadbitDescribe {
  input {
    File workdirWorkdir
    Boolean noxNox
    Boolean tT
    Boolean tT
    Array[Int]+ jobJobIds
    Array[String]+ whereWhere
    Array[String]+ selectSelect
    File tmpTmpDb
    Boolean tsvTsv
    String outputOutput
  }
  command <<<
    tadbit describe \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{true="--noX" false="" noxNox} \
      ~{true="-t" false="" tT} \
      ~{true="-T" false="" tT} \
      ~{if defined(jobJobIds) then ("--jobids " +  '"' + jobJobIds + '"') else ""} \
      ~{if defined(whereWhere) then ("--where " +  '"' + whereWhere + '"') else ""} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{true="--tsv" false="" tsvTsv} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}