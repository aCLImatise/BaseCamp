version 1.0

task Xsd {
  input {
    String? helpHelp
    String? versionVersion
    String? cxxCxxTree
    String? cxxCxxParser
  }
  command <<<
    xsd \
      ~{helpHelp} \
      ~{versionVersion} \
      ~{cxxCxxTree} \
      ~{cxxCxxParser}
  >>>
}