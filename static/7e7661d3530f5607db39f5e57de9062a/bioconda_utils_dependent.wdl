version 1.0

task BiocondaUtilsDependent {
  input {
    Boolean restrictRestrict
    Array[String]+ dependenciesDependencies
    Array[String]+ reverseReverseDependencies
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipeFolder
    String? configConfig
  }
  command <<<
    bioconda-utils dependent \
      ~{recipeRecipeFolder} \
      ~{true="--restrict" false="" restrictRestrict} \
      ~{if defined(dependenciesDependencies) then ("--dependencies " +  '"' + dependenciesDependencies + '"') else ""} \
      ~{if defined(reverseReverseDependencies) then ("--reverse-dependencies " +  '"' + reverseReverseDependencies + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""} \
      ~{configConfig}
  >>>
}