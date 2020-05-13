version 1.0

task EnaGroupGet {
  input {
    String groupGroup
    String formatFormat
    String destDest
    Boolean wgsWgs
    Boolean extractExtractWgs
    Boolean expandedExpanded
    Boolean metaMeta
    Boolean indexIndex
    Boolean asperaAspera
    String asperaAsperaSettings
    Boolean subtreeSubtree
    String? accessionAccession
  }
  command <<<
    enaGroupGet \
      ~{accessionAccession} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(destDest) then ("--dest " +  '"' + destDest + '"') else ""} \
      ~{true="--wgs" false="" wgsWgs} \
      ~{true="--extract-wgs" false="" extractExtractWgs} \
      ~{true="--expanded" false="" expandedExpanded} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--aspera" false="" asperaAspera} \
      ~{if defined(asperaAsperaSettings) then ("--aspera-settings " +  '"' + asperaAsperaSettings + '"') else ""} \
      ~{true="--subtree" false="" subtreeSubtree}
  >>>
}