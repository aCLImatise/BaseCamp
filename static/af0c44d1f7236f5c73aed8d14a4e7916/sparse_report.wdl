version 1.0

task SparseReport {
  input {
    File pathPath
    String tagTag
    Boolean absoluteAbsolute
    String lowLow
    String speciesSpeciesFilter
    Boolean sampleSampleFilter
    Boolean inverseInverse
    String? workspaceWorkspace
  }
  command <<<
    sparse report \
      ~{workspaceWorkspace} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{true="--absolute" false="" absoluteAbsolute} \
      ~{if defined(lowLow) then ("--low " +  '"' + lowLow + '"') else ""} \
      ~{if defined(speciesSpeciesFilter) then ("--speciesFilter " +  '"' + speciesSpeciesFilter + '"') else ""} \
      ~{true="--sampleFilter" false="" sampleSampleFilter} \
      ~{true="--inverse" false="" inverseInverse}
  >>>
}