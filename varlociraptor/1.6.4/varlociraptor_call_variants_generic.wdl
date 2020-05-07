version 1.0

task VarlociraptorCallVariantsGeneric {
  input {
    String obsObs
    String scenarioScenario
  }
  command <<<
    varlociraptor call variants generic \
      ~{if defined(obsObs) then ("--obs " +  '"' + obsObs + '"') else ""} \
      ~{if defined(scenarioScenario) then ("--scenario " +  '"' + scenarioScenario + '"') else ""}
  >>>
}