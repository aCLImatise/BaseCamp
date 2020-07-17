version 1.0

task Rdfpipe {
  input {
    String? input_format
    String? output_format
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
      ~{true="--no-guess" false="" no_guess} \
      ~{true="--no-out" false="" no_out} \
      ~{true="--warn" false="" warn}
  >>>
  parameter_meta {
    input_format: "Format of the input document(s). Available input formats are: rdfa1.0, rdfa1.1, html, text/n3, nt, trig, nquads, application/n-triples, application/xhtml+xml, ttl, ntriples, application/svg+xml, application/trix, turtle, hturtle, microdata, xml, text/html, mdata, nt11, trix, application/rdf+xml, rdfa, application/n-quads, n3, text/turtle. If no format is given, it will be guessed from the file name extension. Keywords to parser can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
    output_format: "Format of the graph serialization. Available output formats are: xml, ntriples, turtle, text/n3, application/trix, application/rdf+xml, pretty-xml, application/n-quads, n3, nt11, trix, nquads, text/turtle, ttl, nt, trig, application/n-triples. Default format is: 'n3'. Keywords to serializer can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
    ns: "=NAMESPACE Register a namespace binding (QName prefix to a base URI). This can be used more than once."
    no_guess: "Don't guess format based on file suffix."
    no_out: "Don't output the resulting graph (useful for checking validity of input)."
    warn: "Output warnings to stderr (by default only critical errors)."
  }
}