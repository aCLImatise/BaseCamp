#!/usr/bin/env cwl-runner

baseCommand:
- rdfpipe
class: CommandLineTool
cwlVersion: v1.0
id: rdfpipe
inputs:
- doc: 'Format of the input document(s). Available input formats are: nt, text/turtle,
    nt11, ntriples, application/svg+xml, trix, mdata, application/xhtml+xml, application/n-quads,
    rdfa1.1, application/trix, turtle, html, n3, application/n-triples, ttl, microdata,
    rdfa1.0, nquads, rdfa, trig, xml, hturtle, application/rdf+xml, text/n3, text/html.
    If no format is given, it will be guessed from the file name extension. Keywords
    to parser can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE.'
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: "Format of the graph serialization. Available output formats are: text/turtle,\
    \ application/trix, nt11, text/n3, trig, nt, trix, application/n-quads, application/n-triples,\
    \ n3, nquads, turtle, ttl, application/rdf+xml, xml, pretty-xml, ntriples. Default\
    \ format is: 'n3'. Keywords to serializer can be given after format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: =NAMESPACE Register a namespace binding (QName prefix to a base URI). This
    can be used more than once.
  id: ns
  inputBinding:
    prefix: --ns
  type: string
- doc: Don't guess format based on file suffix.
  id: no_guess
  inputBinding:
    prefix: --no-guess
  type: boolean
- doc: Don't output the resulting graph (useful for checking validity of input).
  id: no_out
  inputBinding:
    prefix: --no-out
  type: boolean
- doc: Output warnings to stderr (by default only critical errors).
  id: warn
  inputBinding:
    prefix: --warn
  type: boolean
