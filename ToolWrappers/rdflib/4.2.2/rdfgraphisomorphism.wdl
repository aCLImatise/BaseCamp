version 1.0

task Rdfgraphisomorphism {
  input {
    Boolean? stdin
    Int? format
    String file_n
  }
  command <<<
    rdfgraphisomorphism \
      ~{file_n} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stdin: "Load from STDIN as well"
    format: "The format of the RDF document(s) to compareOne of\\n'xml','n3','trix', 'nt', or 'rdfa'.  The default is xml\\n"
    file_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}