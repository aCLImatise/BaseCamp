version 1.0

task Warehouses {
  input {
    Boolean versionVersion
    String variableVariable
    String trigonometricTrigonometric
    String threadThread
    String gistGist
    Boolean traceTrace
  }
  command <<<
    warehouses \
      ~{true="- Version" false="" versionVersion} \
      ~{if defined(variableVariable) then ("- Variable " +  '"' + variableVariable + '"') else ""} \
      ~{if defined(trigonometricTrigonometric) then ("- Trigonometric " +  '"' + trigonometricTrigonometric + '"') else ""} \
      ~{if defined(threadThread) then ("- Thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(gistGist) then ("- Gist " +  '"' + gistGist + '"') else ""} \
      ~{true="-trace" false="" traceTrace}
  >>>
}