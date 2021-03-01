class: CommandLineTool
id: medaka_snp.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_regions
  doc: "Limit variant calling to these reference names\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_threshold
  doc: "Threshold for considering secondary calls. A value of\n1 will result in haploid\
    \ decoding. (default: 0.04)"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_ref_vcf
  doc: 'Reference vcf. (default: None)'
  type: string?
  inputBinding:
    prefix: --ref_vcf
- id: in_verbose
  doc: 'Populate VCF info fields. (default: False)'
  type: boolean?
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
hints: []
cwlVersion: v1.1
baseCommand:
- medaka
- snp
