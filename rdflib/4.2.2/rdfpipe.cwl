class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rdfpipe.cwl
inputs:
- id: input_format
  doc: 'Format of the input document(s). Available input formats are: rdfa1.0, rdfa1.1,
    html, text/n3, nt, trig, nquads, application/n-triples, application/xhtml+xml,
    ttl, ntriples, application/svg+xml, application/trix, turtle, hturtle, microdata,
    xml, text/html, mdata, nt11, trix, application/rdf+xml, rdfa, application/n-quads,
    n3, text/turtle. If no format is given, it will be guessed from the file name
    extension. Keywords to parser can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE.'
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: "Format of the graph serialization. Available output formats are: xml, ntriples,\
    \ turtle, text/n3, application/trix, application/rdf+xml, pretty-xml, application/n-quads,\
    \ n3, nt11, trix, nquads, text/turtle, ttl, nt, trig, application/n-triples. Default\
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
