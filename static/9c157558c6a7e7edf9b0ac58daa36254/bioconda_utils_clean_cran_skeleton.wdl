version 1.0

task BiocondaUtilsCleanCranSkeleton {
  input {
    Boolean noNoWindows
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipe
  }
  command <<<
    bioconda-utils clean-cran-skeleton \
      ~{recipeRecipe} \
      ~{true="--no-windows" false="" noNoWindows} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""}
  >>>
}