version 1.0

task Ismap.py {
  input {
    Array[String]+ readsReads
    Array[String]+ queriesQueries
    Array[String]+ referenceReference
    String outputOutputDir
    String logLog
    String helpHelpAll
  }
  command <<<
    ismap.py \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(queriesQueries) then ("--queries " +  '"' + queriesQueries + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(helpHelpAll) then ("--help_all " +  '"' + helpHelpAll + '"') else ""}
  >>>
}