class: CommandLineTool
id: rdfpipe.cwl
inputs:
- id: input_format
  doc: 'Format of the input document(s). Available input formats are: nt, text/turtle,
    nt11, ntriples, application/svg+xml, trix, mdata, application/xhtml+xml, application/n-quads,
    rdfa1.1, application/trix, turtle, html, n3, application/n-triples, ttl, microdata,
    rdfa1.0, nquads, rdfa, trig, xml, hturtle, application/rdf+xml, text/n3, text/html.
    If no format is given, it will be guessed from the file name extension. Keywords
    to parser can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE.'
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: "Format of the graph serialization. Available output formats are: text/turtle,\
    \ application/trix, nt11, text/n3, trig, nt, trix, application/n-quads, application/n-triples,\
    \ n3, nquads, turtle, ttl, application/rdf+xml, xml, pretty-xml, ntriples. Default\
    \ format is: 'n3'. Keywords to serializer can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
  type: string
  inputBinding:
    prefix: --output-format
- id: ns
  doc: =NAMESPACE Register a namespace binding (QName prefix to a base URI). This
    can be used more than once.
  type: string
  inputBinding:
    prefix: --ns
- id: no_guess
  doc: Don't guess format based on file suffix.
  type: boolean
  inputBinding:
    prefix: --no-guess
- id: no_out
  doc: Don't output the resulting graph (useful for checking validity of input).
  type: boolean
  inputBinding:
    prefix: --no-out
- id: warn
  doc: Output warnings to stderr (by default only critical errors).
  type: boolean
  inputBinding:
    prefix: --warn
outputs: []
cwlVersion: v1.1
baseCommand:
- rdfpipe
