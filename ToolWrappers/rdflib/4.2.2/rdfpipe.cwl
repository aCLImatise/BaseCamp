class: CommandLineTool
id: rdfpipe.cwl
inputs:
- id: in_input_format
  doc: "Format of the input document(s). Available input\nformats are: application/rdf+xml,\
    \ xml, text/n3, n3,\ntext/turtle, turtle, ttl, application/n-triples,\nntriples,\
    \ nt, nt11, application/n-quads, nquads,\napplication/trix, trix, trig, hturtle,\
    \ rdfa, mdata,\nmicrodata, rdfa1.0, rdfa1.1, html,\napplication/svg+xml, application/xhtml+xml,\
    \ text/html.\nIf no format is given, it will be guessed from the\nfile name extension.\
    \ Keywords to parser can be given\nafter format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
  type: File?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "Format of the graph serialization. Available output\nformats are: application/rdf+xml,\
    \ xml, text/n3, n3,\ntext/turtle, turtle, ttl, trig, application/n-triples,\n\
    ntriples, nt, nt11, pretty-xml, trix,\napplication/trix, application/n-quads,\
    \ nquads. Default\nformat is: 'n3'. Keywords to serializer can be given\nafter\
    \ format like: FORMAT:(+)KW1,-KW2,KW3=VALUE."
  type: long?
  inputBinding:
    prefix: --output-format
- id: in_ns
  doc: "=NAMESPACE\nRegister a namespace binding (QName prefix to a base\nURI). This\
    \ can be used more than once."
  type: string?
  inputBinding:
    prefix: --ns
- id: in_no_guess
  doc: Don't guess format based on file suffix.
  type: boolean?
  inputBinding:
    prefix: --no-guess
- id: in_no_out
  doc: "Don't output the resulting graph (useful for checking\nvalidity of input)."
  type: boolean?
  inputBinding:
    prefix: --no-out
- id: in_warn
  doc: "Output warnings to stderr (by default only critical\nerrors).\n"
  type: boolean?
  inputBinding:
    prefix: --warn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rdfpipe
