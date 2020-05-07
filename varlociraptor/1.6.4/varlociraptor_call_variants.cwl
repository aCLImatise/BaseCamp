class: CommandLineTool
id: varlociraptor_call_variants.cwl
inputs:
- id: output
  doc: Output variant calls to given path (in BCF format). If omitted, prints calls
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: test_case_locus
  doc: Create a test case for the given locus. Locus must be given in the form CHROM:POS[:IDX].
    IDX is thereby an optional value to select a particular variant at the locus,
    counting from 1. If IDX is not specified, the first variant will be chosen. Alternatively,
    for single variant VCFs, you can specify 'all'.
  type: string
  inputBinding:
    prefix: --testcase-locus
- id: test_case_prefix
  doc: Create test case files in the given directory.
  type: string
  inputBinding:
    prefix: --testcase-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- variants
