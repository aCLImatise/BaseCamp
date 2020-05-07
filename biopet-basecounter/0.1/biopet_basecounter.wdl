version 1.0

task BiopetBasecounter {
  input {
    String logLogLevel
    File refRefFlat
    Directory outputOutputDir
    File bamBam
    String prefixPrefix
  }
  command <<<
    biopet-basecounter \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(refRefFlat) then ("--refFlat " +  '"' + refRefFlat + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}