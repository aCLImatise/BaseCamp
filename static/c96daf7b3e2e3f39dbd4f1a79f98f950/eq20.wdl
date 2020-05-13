version 1.0

task Eq20 {
  input {
    Boolean versionVersion
    String variableVariable
    String trigonometricTrigonometric
    String threadThread
    String gistGist
    Boolean traceTrace
  }
  command <<<
    eq20 \
      ~{true="- Version" false="" versionVersion} \
      ~{if defined(variableVariable) then ("- Variable " +  '"' + variableVariable + '"') else ""} \
      ~{if defined(trigonometricTrigonometric) then ("- Trigonometric " +  '"' + trigonometricTrigonometric + '"') else ""} \
      ~{if defined(threadThread) then ("- Thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(gistGist) then ("- Gist " +  '"' + gistGist + '"') else ""} \
      ~{true="-trace" false="" traceTrace}
  >>>
}