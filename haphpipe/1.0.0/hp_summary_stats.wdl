version 1.0

task HpSummaryStats {
  input {
    String dirDirList
    String phPhList
    Boolean ampliconsAmplicons
    String outdirOutdir
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_summary_stats \
      ~{if defined(dirDirList) then ("--dir_list " +  '"' + dirDirList + '"') else ""} \
      ~{if defined(phPhList) then ("--ph_list " +  '"' + phPhList + '"') else ""} \
      ~{true="--amplicons" false="" ampliconsAmplicons} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}