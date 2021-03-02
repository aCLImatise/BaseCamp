class: CommandLineTool
id: stag_diff.pl.cwl
inputs:
- id: in_ignore
  doc: "|i ELEMENT\nthese nodes are ignored for the purposes of comparison. Note that\n\
    attributes are treated as elements, prefixed by the containing\nelement id. For\
    \ example, if you have\n<foo ID=\"wibble\">\nAnd you wish to ignore the ID attribute,\
    \ then you would use the\nswitch\n-ignore foo-ID\nYou can specify multiple elements\
    \ to ignore like this\n-i foo -i bar -i baz\nYou can also specify paths\n-i foo/bar/bar-id"
  type: boolean?
  inputBinding:
    prefix: -ignore
- id: in_parser
  doc: "|p FORMAT\nwhich parser to use. The default is XML. This can also be\nautodetected\
    \ by the file suffix. Other alternatives are sxpr and\nitext. See Data::Stag for\
    \ details."
  type: boolean?
  inputBinding:
    prefix: -parser
- id: in_report
  doc: "|r ELEMENT\nreport mismatches as they occur on each element of type ELEMENT\n\
    multiple elements can be specified"
  type: boolean?
  inputBinding:
    prefix: -report
- id: in_verbose
  doc: "|v\nused in conjunction with the -report switch\nshows the tree of the mismatching\
    \ element"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_output
  doc: "If a mismatch is reported, a report is generated displaying the subpart\n\
    of the tree that could not be matched. This will look like this:\nREASON: no_matching_node:\
    \ annotation no_matching_node: feature_set\nno_matching_node: feature_span no_matching_node:\
    \ evidence\nno_matching_node: evidence-id data_mismatch(:15077290 ne :15077291):\n\
    evidence-id AND evidence-id\nDue to the nature of tree matching, it can be difficult\
    \ to specify\nexactly how trees do not match. To investigate this, you may need\
    \ to use\nthe -r and -v options. For the above output, I would recommend using\n\
    stag-diff -r feature_span -v"
  type: string
  inputBinding:
    position: 0
- id: in_algorithm
  doc: Both trees are recursively traversed... see the actual code for how this
  type: string
  inputBinding:
    position: 1
- id: in_works
  doc: "The order of elements is not important; eg\n<foo>\n<bar>\n<baz>1</baz>\n</bar>\n\
    <bar>\n<baz>2</baz>\n</bar>\n</foo>"
  type: string
  inputBinding:
    position: 2
- id: in_matches
  doc: "<foo>\n<bar>\n<baz>2</baz>\n</bar>\n<bar>\n<baz>1</baz>\n</bar>\n</foo>"
  type: string
  inputBinding:
    position: 3
- id: in_author
  doc: Chris Mungall cjm at fruitfly dot org
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stag-diff.pl
