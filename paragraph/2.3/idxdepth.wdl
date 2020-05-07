version 1.0

task Idxdepth {
  input {
    Boolean bB
    String bamBamIndex
    Boolean oO
    Boolean oO
    Boolean rR
    String altAltContig
    Boolean iI
    String autoAutoSomeRegex
    String sexSexChromosomeRegex
    String threadsThreads
    String logLogLevel
    String logLogFile
    String logLogAsync
  }
  command <<<
    idxdepth \
      ~{true="-b" false="" bB} \
      ~{if defined(bamBamIndex) then ("--bam-index " +  '"' + bamBamIndex + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{if defined(altAltContig) then ("--altcontig " +  '"' + altAltContig + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{if defined(autoAutoSomeRegex) then ("--autosome-regex " +  '"' + autoAutoSomeRegex + '"') else ""} \
      ~{if defined(sexSexChromosomeRegex) then ("--sex-chromosome-regex " +  '"' + sexSexChromosomeRegex + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogAsync) then ("--log-async " +  '"' + logLogAsync + '"') else ""}
  >>>
}