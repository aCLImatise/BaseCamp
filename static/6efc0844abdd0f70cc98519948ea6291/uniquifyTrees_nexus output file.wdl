version 1.0

task UniquifyTreesNexus output file {
  input {
    String? nexusNexusInputFile
    String? nexusNexusOutputFile
  }
  command <<<
    uniquifyTrees nexus output file \
      ~{nexusNexusInputFile} \
      ~{nexusNexusOutputFile}
  >>>
}