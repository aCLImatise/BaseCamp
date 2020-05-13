version 1.0

task MglexCliBuildmatrix {
  input {
    File seedsSeeds
    File identifiersIdentifiers
    String? buildBuildMatrix
    String? buildBuildMatrix
  }
  command <<<
    mglex-cli buildmatrix \
      ~{buildBuildMatrix} \
      ~{if defined(seedsSeeds) then ("--seeds " +  '"' + seedsSeeds + '"') else ""} \
      ~{if defined(identifiersIdentifiers) then ("--identifiers " +  '"' + identifiersIdentifiers + '"') else ""} \
      ~{buildBuildMatrix}
  >>>
}