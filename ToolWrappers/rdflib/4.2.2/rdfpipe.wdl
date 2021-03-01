version 1.0

task Rdfpipe {
  input {
    File? input_format
    Int? output_format
    String? ns
    Boolean? no_guess
    Boolean? no_out
    Boolean? warn
  }
  command <<<
    rdfpipe \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(ns) then ("--ns " +  '"' + ns + '"') else ""} \
      ~{if (no_guess) then "--no-guess" else ""} \
      ~{if (no_out) then "--no-out" else ""} \
      ~{if (warn) then "--warn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_format: "Format of the input document(s). Available input\\nformats are: application/rdf+xml, xml, text/n3, n3,\\ntext/turtle, turtle, ttl, application/n-triples,\\nntriples, nt, nt11, application/n-quads, nquads,\\napplication/trix, trix, trig, hturtle, rdfa, mdata,\\nmicrodata, rdfa1.0, rdfa1.1, html,\\napplication/svg+xml, application/xhtml+xml, text/html.\\nIf no format is given, it will be guessed from the\\nfile name extension. Keywords to parser can be given\\nafter format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
    output_format: "Format of the graph serialization. Available output\\nformats are: application/rdf+xml, xml, text/n3, n3,\\ntext/turtle, turtle, ttl, trig, application/n-triples,\\nntriples, nt, nt11, pretty-xml, trix,\\napplication/trix, application/n-quads, nquads. Default\\nformat is: 'n3'. Keywords to serializer can be given\\nafter format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
    ns: "=NAMESPACE\\nRegister a namespace binding (QName prefix to a base\\nURI). This can be used more than once."
    no_guess: "Don't guess format based on file suffix."
    no_out: "Don't output the resulting graph (useful for checking\\nvalidity of input)."
    warn: "Output warnings to stderr (by default only critical\\nerrors).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}