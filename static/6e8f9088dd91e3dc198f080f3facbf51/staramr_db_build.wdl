version 1.0

task StaramrDbBuild {
  input {
    String dirDir
    String resResFinderCommit
    String pointPointFinderCommit
    String plasmidPlasmidFinderCommit
  }
  command <<<
    staramr db build \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(resResFinderCommit) then ("--resfinder-commit " +  '"' + resResFinderCommit + '"') else ""} \
      ~{if defined(pointPointFinderCommit) then ("--pointfinder-commit " +  '"' + pointPointFinderCommit + '"') else ""} \
      ~{if defined(plasmidPlasmidFinderCommit) then ("--plasmidfinder-commit " +  '"' + plasmidPlasmidFinderCommit + '"') else ""}
  >>>
}