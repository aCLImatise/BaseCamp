version 1.0

task Futurize {
  input {
    Boolean unicodeUnicodeLiterals
    String fixFix
    String processesProcesses
    String noNoFix
    Boolean listListFixes
    Boolean printPrintFunction
    Boolean verboseVerbose
    Boolean noNoDiffs
    Boolean writeWrite
    Boolean noNoBackups
    String outputOutputDir
    Boolean writeWriteUnchangedFiles
    String addAddSuffix
  }
  command <<<
    futurize \
      ~{true="--unicode-literals" false="" unicodeUnicodeLiterals} \
      ~{if defined(fixFix) then ("--fix " +  '"' + fixFix + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(noNoFix) then ("--nofix " +  '"' + noNoFix + '"') else ""} \
      ~{true="--list-fixes" false="" listListFixes} \
      ~{true="--print-function" false="" printPrintFunction} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no-diffs" false="" noNoDiffs} \
      ~{true="--write" false="" writeWrite} \
      ~{true="--nobackups" false="" noNoBackups} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--write-unchanged-files" false="" writeWriteUnchangedFiles} \
      ~{if defined(addAddSuffix) then ("--add-suffix " +  '"' + addAddSuffix + '"') else ""}
  >>>
}