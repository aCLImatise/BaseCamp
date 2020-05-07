version 1.0

task Lncrna {
  input {
    Boolean webWeb
    String lastLastZ
    String bedBedTools
    String liftLiftOver
  }
  command <<<
    lncrna \
      ~{true="--web" false="" webWeb} \
      ~{if defined(lastLastZ) then ("--lastz " +  '"' + lastLastZ + '"') else ""} \
      ~{if defined(bedBedTools) then ("--bedtools " +  '"' + bedBedTools + '"') else ""} \
      ~{if defined(liftLiftOver) then ("--liftover " +  '"' + liftLiftOver + '"') else ""}
  >>>
}