version 1.0

task FznGecode {
  input {
    String supportedSupported
    Boolean versionVersion
    String variableVariable
    String trigonometricTrigonometric
    String threadThread
    String gistGist
    Boolean modeMode
    Boolean sS
    Boolean oO
  }
  command <<<
    fzn-gecode \
      ~{if defined(supportedSupported) then ("- Supported " +  '"' + supportedSupported + '"') else ""} \
      ~{true="- Version" false="" versionVersion} \
      ~{if defined(variableVariable) then ("- Variable " +  '"' + variableVariable + '"') else ""} \
      ~{if defined(trigonometricTrigonometric) then ("- Trigonometric " +  '"' + trigonometricTrigonometric + '"') else ""} \
      ~{if defined(threadThread) then ("- Thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(gistGist) then ("- Gist " +  '"' + gistGist + '"') else ""} \
      ~{true="-mode" false="" modeMode} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO}
  >>>
}