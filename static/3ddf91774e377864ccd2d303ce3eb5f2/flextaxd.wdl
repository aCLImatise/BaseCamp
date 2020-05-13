version 1.0

task Flextaxd {
  input {
    Boolean dbDb
    Boolean oO
    Boolean dumpDump
    Boolean dumpDumpMini
    Boolean forceForce
    Boolean tfTf
    Boolean ttTt
    Boolean taxidTaxidBase
    Boolean mfMf
    Boolean mdMd
    Boolean gtGt
    Boolean gpGp
    Boolean pP
    Boolean replaceReplace
    Boolean dbDbProgram
    Boolean dumpDumpPrefix
    Boolean dumpDumpSep
    Boolean dumpDumpDescriptions
    Boolean logsLogs
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean supressSupress
    Boolean quietQuiet
  }
  command <<<
    flextaxd \
      ~{true="-db" false="" dbDb} \
      ~{true="-o" false="" oO} \
      ~{true="--dump" false="" dumpDump} \
      ~{true="--dump_mini" false="" dumpDumpMini} \
      ~{true="--force" false="" forceForce} \
      ~{true="-tf" false="" tfTf} \
      ~{true="-tt" false="" ttTt} \
      ~{true="--taxid_base" false="" taxidTaxidBase} \
      ~{true="-mf" false="" mfMf} \
      ~{true="-md" false="" mdMd} \
      ~{true="-gt" false="" gtGt} \
      ~{true="-gp" false="" gpGp} \
      ~{true="-p" false="" pP} \
      ~{true="--replace" false="" replaceReplace} \
      ~{true="--dbprogram" false="" dbDbProgram} \
      ~{true="--dump_prefix" false="" dumpDumpPrefix} \
      ~{true="--dump_sep" false="" dumpDumpSep} \
      ~{true="--dump_descriptions" false="" dumpDumpDescriptions} \
      ~{true="--logs" false="" logsLogs} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--supress" false="" supressSupress} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}