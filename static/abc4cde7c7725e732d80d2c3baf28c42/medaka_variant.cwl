class: CommandLineTool
id: medaka_variant.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_regions
  doc: "Limit variant calling to these reference names\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_verbose
  doc: 'Populate VCF info fields. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_ref_fast_a
  doc: Reference sequence .fasta file.
  type: string
  inputBinding:
    position: 0
- id: in_inputs
  doc: Consensus .hdf files.
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Output .vcf.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medaka
- variant
