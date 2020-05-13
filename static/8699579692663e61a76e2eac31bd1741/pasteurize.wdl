version 1.0

task Pasteurize {
  input {
    Boolean allAllImports
    String fixFix
    String processesProcesses
    String noNoFix
    Boolean listListFixes
    Boolean verboseVerbose
    Boolean noNoDiffs
    Boolean writeWrite
    Boolean noNoBackups
  }
  command <<<
    pasteurize \
      ~{true="--all-imports" false="" allAllImports} \
      ~{if defined(fixFix) then ("--fix " +  '"' + fixFix + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(noNoFix) then ("--nofix " +  '"' + noNoFix + '"') else ""} \
      ~{true="--list-fixes" false="" listListFixes} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no-diffs" false="" noNoDiffs} \
      ~{true="--write" false="" writeWrite} \
      ~{true="--nobackups" false="" noNoBackups}
  >>>
}