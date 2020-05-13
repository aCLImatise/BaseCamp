version 1.0

task BiomajCli.py {
  input {
    String bankBank
    String releaseRelease
    Boolean searchSearch
    String formatsFormats
    String typesTypes
    Boolean queryQuery
    Boolean showShow
    String releaseRelease
    String maintenanceMaintenance
  }
  command <<<
    biomaj-cli.py \
      ~{if defined(bankBank) then ("--bank " +  '"' + bankBank + '"') else ""} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{true="--search" false="" searchSearch} \
      ~{if defined(formatsFormats) then ("--formats " +  '"' + formatsFormats + '"') else ""} \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{true="--query" false="" queryQuery} \
      ~{true="--show" false="" showShow} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{if defined(maintenanceMaintenance) then ("--maintenance " +  '"' + maintenanceMaintenance + '"') else ""}
  >>>
}