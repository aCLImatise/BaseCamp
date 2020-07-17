version 1.0

task Rdfgraphisomorphism {
  input {
    Boolean? stdin
    String? format
    File file_n
  }
  command <<<
    rdfgraphisomorphism \
      ~{file_n} \
      ~{true="--stdin" false="" stdin} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    stdin: "Load from STDIN as well"
    format: "The format of the RDF document(s) to compareOne of 'xml','n3','trix', 'nt', or 'rdfa'.  The default is xml"
    file_n: ""
  }
}