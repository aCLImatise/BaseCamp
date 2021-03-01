class: CommandLineTool
id: varlociraptor_call_variants.cwl
inputs:
- id: in_output
  doc: "Output variant calls to given path (in BCF format). If omitted, prints\ncalls\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_test_case_locus
  doc: "Create a test case for the given locus. Locus must be given in the form\n\
    CHROM:POS[:IDX]. IDX is thereby an optional value to select a particular\nvariant\
    \ at the locus, counting from 1. If IDX is not specified, the first\nvariant will\
    \ be chosen. Alternatively, for single variant VCFs, you can\nspecify 'all'."
  type: long?
  inputBinding:
    prefix: --testcase-locus
- id: in_test_case_prefix
  doc: Create test case files in the given directory.
  type: Directory?
  inputBinding:
    prefix: --testcase-prefix
- id: in_generic
  doc: "Call variants for a given scenario specified with the varlociraptor calling\
    \ grammar and a\nVCF/BCF with candidate variants."
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: Prints this message or the help of the given subcommand(s)
  type: string
  inputBinding:
    position: 1
- id: in_tumor_normal
  doc: "Call somatic and germline variants from a tumor-normal sample pair and a VCF/BCF\
    \ with candidate\nvariants.\n"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output variant calls to given path (in BCF format). If omitted, prints\ncalls\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- variants
