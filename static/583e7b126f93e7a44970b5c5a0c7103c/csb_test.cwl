class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/csb_test.cwl
inputs:
- id: type
  doc: Type of tests to load from each namespace (default=any)
  type: string
  inputBinding:
    prefix: --type
- id: verbosity
  doc: Verbosity level passed to unittest.TextTestRunner (default=1).
  type: string
  inputBinding:
    prefix: --verbosity
- id: update_files
  doc: Force update of the test pickles in /tmp/tmp55avv5mq/lib/python3.8/site- packages/csb/test/data
  type: boolean
  inputBinding:
    prefix: --update-files
- id: generated_resources
  doc: Generate, store and load additional test resources in this directory (default=/tmp/tmp55avv5mq/lib/python3.8/site-
    packages/csb/test/data)
  type: string
  inputBinding:
    prefix: --generated-resources
- id: namespaces
  doc: "An optional list of CSB test dotted namespaces, from which to load tests.\
    \ '__main__' and '.' are interpreted as the current module. If a namespace ends\
    \ with an asterisk '.*', all sub-packages will be scanned as well. Examples: \"\
    csb.test.cases.bio.*\" \"csb.test.cases.bio.io\" \"csb.test.cases.bio.utils\"\
    \ \".\")"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-test
