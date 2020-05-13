version 1.0

task BiocondaUtilsDag {
  input {
    Array[String]+ packagesPackages
    String formatFormat
    Boolean hideHideSingletons
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipeFolder
    String? configConfig
  }
  command <<<
    bioconda-utils dag \
      ~{recipeRecipeFolder} \
      ~{if defined(packagesPackages) then ("--packages " +  '"' + packagesPackages + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--hide-singletons" false="" hideHideSingletons} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""} \
      ~{configConfig}
  >>>
}