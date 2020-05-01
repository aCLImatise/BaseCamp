version 1.0

task QueryTestlists {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean silentSilent
    Boolean countCount
    String listList
    Boolean showShowOptions
    Boolean defineDefineTestTypes
    String xmlXmlCategory
    String xmlXmlMachine
    String xmlXmlCompiler
    String xmlXmlTestList
  }
  command <<<
    query_testlists \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--count" false="" countCount} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{true="--show-options" false="" showShowOptions} \
      ~{true="--define-testtypes" false="" defineDefineTestTypes} \
      ~{if defined(xmlXmlCategory) then ("--xml-category " +  '"' + xmlXmlCategory + '"') else ""} \
      ~{if defined(xmlXmlMachine) then ("--xml-machine " +  '"' + xmlXmlMachine + '"') else ""} \
      ~{if defined(xmlXmlCompiler) then ("--xml-compiler " +  '"' + xmlXmlCompiler + '"') else ""} \
      ~{if defined(xmlXmlTestList) then ("--xml-testlist " +  '"' + xmlXmlTestList + '"') else ""}
  >>>
}