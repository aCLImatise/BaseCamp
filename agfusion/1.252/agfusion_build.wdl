version 1.0

task AgfusionBuild {
  input {
    String dirDir
    String speciesSpecies
    String releaseRelease
    String pfamPfam
    String serverServer
  }
  command <<<
    agfusion build \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{if defined(pfamPfam) then ("--pfam " +  '"' + pfamPfam + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}