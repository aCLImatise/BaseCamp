version 1.0

task HpPhParser {
  input {
    String haplotypesHaplotypesFa
    String outdirOutdir
    String prefixPrefix
    Boolean keepKeepGaps
    Boolean quietQuiet
    String logLogFile
  }
  command <<<
    hp_ph_parser \
      ~{if defined(haplotypesHaplotypesFa) then ("--haplotypes_fa " +  '"' + haplotypesHaplotypesFa + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--keep_gaps" false="" keepKeepGaps} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""}
  >>>
}