class: CommandLineTool
id: csb_test.cwl
inputs:
- id: in_type
  doc: "Type of tests to load from each namespace\n(default=any)"
  type: string
  inputBinding:
    prefix: --type
- id: in_verbosity
  doc: "Verbosity level passed to unittest.TextTestRunner\n(default=1)."
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_update_files
  doc: "Force update of the test pickles in\n/usr/local/lib/python3.6/site-packages/csb/test/data"
  type: boolean
  inputBinding:
    prefix: --update-files
- id: in_generated_resources
  doc: "Generate, store and load additional test resources in\nthis directory (default=/usr/local/lib/python3.6/site-\n\
    packages/csb/test/data)\n"
  type: Directory
  inputBinding:
    prefix: --generated-resources
- id: in_namespaces
  doc: "An optional list of CSB test dotted namespaces, from\nwhich to load tests.\
    \ '__main__' and '.' are\ninterpreted as the current module. If a namespace ends\n\
    with an asterisk '.*', all sub-packages will be\nscanned as well. Examples: \"\
    csb.test.cases.bio.*\"\n\"csb.test.cases.bio.io\" \"csb.test.cases.bio.utils\"\
    \n\".\")"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- csb-test
