version 1.0

task ArbHelp2xmlARB helpfile {
  input {
    String? xmlXmlOutput
  }
  command <<<
    arb_help2xml ARB helpfile \
      ~{xmlXmlOutput}
  >>>
}