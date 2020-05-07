version 1.0

task StaramrDbUpdate {
  input {
    Boolean updateUpdateDefault
    String resResFinderCommit
    String pointPointFinderCommit
    String plasmidPlasmidFinderCommit
  }
  command <<<
    staramr db update \
      ~{true="--update-default" false="" updateUpdateDefault} \
      ~{if defined(resResFinderCommit) then ("--resfinder-commit " +  '"' + resResFinderCommit + '"') else ""} \
      ~{if defined(pointPointFinderCommit) then ("--pointfinder-commit " +  '"' + pointPointFinderCommit + '"') else ""} \
      ~{if defined(plasmidPlasmidFinderCommit) then ("--plasmidfinder-commit " +  '"' + plasmidPlasmidFinderCommit + '"') else ""}
  >>>
}