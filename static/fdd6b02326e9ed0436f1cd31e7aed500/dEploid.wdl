version 1.0

task DEploid {
  input {
    String deDePloId
    String fileFile
    String fileFile
    String excludeExclude
    String specifySpecify
    Int outOut
    Int numberNumber
    Int randomRandom
    String forbidForbidUpdateProp
    String forbidForbidUpdateSingle
    String forbidForbidUpdatePair
    String initialInitialP
  }
  command <<<
    dEploid \
      ~{if defined(deDePloId) then ("--  DEploid " +  '"' + deDePloId + '"') else ""} \
      ~{if defined(fileFile) then ("--  File " +  '"' + fileFile + '"') else ""} \
      ~{if defined(fileFile) then ("--  File " +  '"' + fileFile + '"') else ""} \
      ~{if defined(excludeExclude) then ("-exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(specifySpecify) then ("--  Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(outOut) then ("--  Out " +  '"' + outOut + '"') else ""} \
      ~{if defined(numberNumber) then ("--  Number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(randomRandom) then ("--  Random " +  '"' + randomRandom + '"') else ""} \
      ~{if defined(forbidForbidUpdateProp) then ("-forbidUpdateProp " +  '"' + forbidForbidUpdateProp + '"') else ""} \
      ~{if defined(forbidForbidUpdateSingle) then ("-forbidUpdateSingle " +  '"' + forbidForbidUpdateSingle + '"') else ""} \
      ~{if defined(forbidForbidUpdatePair) then ("-forbidUpdatePair " +  '"' + forbidForbidUpdatePair + '"') else ""} \
      ~{if defined(initialInitialP) then ("-initialP " +  '"' + initialInitialP + '"') else ""}
  >>>
}