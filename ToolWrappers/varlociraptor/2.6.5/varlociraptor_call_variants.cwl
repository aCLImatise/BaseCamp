class: CommandLineTool
id: varlociraptor_call_variants.cwl
inputs:
- id: in_omit_read_orientation_bias
  doc: Do not consider read orientation bias when calculating the probability of an
  type: boolean?
  inputBinding:
    prefix: --omit-read-orientation-bias
- id: in_omit_strand_bias
  doc: "Do not consider strand bias when calculating the probability of an artifact.Use\n\
    this flag when processing (panel) sequencing data, where the wet-lab methodology\n\
    leads to strand bias in the coverage of genuine variants."
  type: boolean?
  inputBinding:
    prefix: --omit-strand-bias
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
- id: in_artifact_dot
  doc: --omit-read-position-bias       Do not consider read position bias when calculating
    the probability of an
  type: string
  inputBinding:
    position: 0
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varlociraptor:2.6.5--hd5fb649_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- variants
