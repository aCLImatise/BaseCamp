version 1.0

task PlanemoBrewOPTIONSTOOLPATH {
  input {
    File brewBrew
  }
  command <<<
    planemo brew OPTIONS TOOL_PATH \
      ~{if defined(brewBrew) then ("--brew " +  '"' + brewBrew + '"') else ""}
  >>>
}