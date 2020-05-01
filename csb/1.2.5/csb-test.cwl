#!/usr/bin/env cwl-runner

baseCommand:
- csb-test
class: CommandLineTool
cwlVersion: v1.0
id: csb-test
inputs:
- doc: "An optional list of CSB test dotted namespaces, from which to load tests.\
    \ '__main__' and '.' are interpreted as the current module. If a namespace ends\
    \ with an asterisk '.*', all sub-packages will be scanned as well. Examples: \"\
    csb.test.cases.bio.*\" \"csb.test.cases.bio.io\" \"csb.test.cases.bio.utils\"\
    \ \".\")"
  id: namespaces
  inputBinding:
    position: 0
  type: string
- doc: Type of tests to load from each namespace (default=any)
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: Verbosity level passed to unittest.TextTestRunner (default=1).
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: Force update of the test pickles in /tmp/tmpqbtfa496/lib/python3.8/site- packages/csb/test/data
  id: update_files
  inputBinding:
    prefix: --update-files
  type: boolean
- doc: Generate, store and load additional test resources in this directory (default=/tmp/tmpqbtfa496/lib/python3.8/site-
    packages/csb/test/data)
  id: generated_resources
  inputBinding:
    prefix: --generated-resources
  type: string
