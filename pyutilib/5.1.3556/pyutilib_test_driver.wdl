version 1.0

task PyutilibTestDriver {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean failFailFast
    Boolean catchCatch
    Boolean bufferBuffer
    String categoryCategory
    Boolean helpHelpSuites
    String helpHelpTests
    Boolean helpHelpCategories
  }
  command <<<
    pyutilib_test_driver \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--failfast" false="" failFailFast} \
      ~{true="--catch" false="" catchCatch} \
      ~{true="--buffer" false="" bufferBuffer} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""} \
      ~{true="--help-suites" false="" helpHelpSuites} \
      ~{if defined(helpHelpTests) then ("--help-tests " +  '"' + helpHelpTests + '"') else ""} \
      ~{true="--help-categories" false="" helpHelpCategories}
  >>>
}