version 1.0

task ArbHelp2xmlXML output {
  input {
    String? arbArbHelpFile
    String? xmlXmlOutput
  }
  command <<<
    arb_help2xml XML output \
      ~{arbArbHelpFile} \
      ~{xmlXmlOutput}
  >>>
}