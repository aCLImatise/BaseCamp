version 1.0

task AbyssPe {
  input {
    Boolean bB
    Boolean alwaysAlwaysMake
    Directory directoryDirectory
    Boolean dD
    Boolean debugDebug
    Boolean environmentEnvironmentOverrides
    String evalEval
    File makefileMakefile
    Boolean ignoreIgnoreErrors
    Directory includeIncludeDir
    Boolean jJ
    Boolean keepKeepGoing
    Boolean lL
    Boolean checkCheckSymlinkTimes
    Boolean justJustPrint
    File assumeAssumeOld
    Boolean oO
    Boolean printPrintDataBase
    Boolean questionQuestion
    Boolean noNoBuiltInRules
    Boolean noNoBuiltInVariables
    Boolean silentSilent
    Boolean noNoSilent
    Boolean noNoKeepGoing
    Boolean touchTouch
    Boolean traceTrace
    Boolean printPrintDirectory
    Boolean noNoPrintDirectory
    File assumeAssumeNew
    Boolean warnWarnUndefinedVariables
  }
  command <<<
    abyss-pe \
      ~{true="-b" false="" bB} \
      ~{true="--always-make" false="" alwaysAlwaysMake} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--environment-overrides" false="" environmentEnvironmentOverrides} \
      ~{if defined(evalEval) then ("--eval " +  '"' + evalEval + '"') else ""} \
      ~{if defined(makefileMakefile) then ("--makefile " +  '"' + makefileMakefile + '"') else ""} \
      ~{true="--ignore-errors" false="" ignoreIgnoreErrors} \
      ~{if defined(includeIncludeDir) then ("--include-dir " +  '"' + includeIncludeDir + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{true="--keep-going" false="" keepKeepGoing} \
      ~{true="-l" false="" lL} \
      ~{true="--check-symlink-times" false="" checkCheckSymlinkTimes} \
      ~{true="--just-print" false="" justJustPrint} \
      ~{if defined(assumeAssumeOld) then ("--assume-old " +  '"' + assumeAssumeOld + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{true="--print-data-base" false="" printPrintDataBase} \
      ~{true="--question" false="" questionQuestion} \
      ~{true="--no-builtin-rules" false="" noNoBuiltInRules} \
      ~{true="--no-builtin-variables" false="" noNoBuiltInVariables} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--no-silent" false="" noNoSilent} \
      ~{true="--no-keep-going" false="" noNoKeepGoing} \
      ~{true="--touch" false="" touchTouch} \
      ~{true="--trace" false="" traceTrace} \
      ~{true="--print-directory" false="" printPrintDirectory} \
      ~{true="--no-print-directory" false="" noNoPrintDirectory} \
      ~{if defined(assumeAssumeNew) then ("--assume-new " +  '"' + assumeAssumeNew + '"') else ""} \
      ~{true="--warn-undefined-variables" false="" warnWarnUndefinedVariables}
  >>>
}