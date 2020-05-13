version 1.0

task EnaDataGet {
  input {
    String formatFormat
    String destDest
    Boolean wgsWgs
    Boolean extractExtractWgs
    Boolean expandedExpanded
    Boolean metaMeta
    Boolean indexIndex
    Boolean asperaAspera
    String asperaAsperaSettings
    String? accessionAccession
  }
  command <<<
    enaDataGet \
      ~{accessionAccession} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(destDest) then ("--dest " +  '"' + destDest + '"') else ""} \
      ~{true="--wgs" false="" wgsWgs} \
      ~{true="--extract-wgs" false="" extractExtractWgs} \
      ~{true="--expanded" false="" expandedExpanded} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--aspera" false="" asperaAspera} \
      ~{if defined(asperaAsperaSettings) then ("--aspera-settings " +  '"' + asperaAsperaSettings + '"') else ""}
  >>>
}