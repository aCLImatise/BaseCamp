version 1.0

task UniquifyTreesNexus input file {
  input {
    String? nexusNexusOutputFile
  }
  command <<<
    uniquifyTrees nexus input file \
      ~{nexusNexusOutputFile}
  >>>
}