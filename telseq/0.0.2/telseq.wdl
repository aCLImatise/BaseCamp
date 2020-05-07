version 1.0

task Telseq {
  input {
    String bamBamList
    String outputOutputDir
    Boolean hH
    Boolean mM
    Boolean uU
    Boolean kK
    Boolean rR
    Boolean zZ
    String exoExoMeBed
    Boolean wW
  }
  command <<<
    telseq \
      ~{if defined(bamBamList) then ("--bamlist " +  '"' + bamBamList + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="-H" false="" hH} \
      ~{true="-m" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{true="-k" false="" kK} \
      ~{true="-r" false="" rR} \
      ~{true="-z" false="" zZ} \
      ~{if defined(exoExoMeBed) then ("--exomebed " +  '"' + exoExoMeBed + '"') else ""} \
      ~{true="-w" false="" wW}
  >>>
}