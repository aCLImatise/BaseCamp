class: CommandLineTool
id: augur_mask.cwl
inputs:
- id: in_sequences
  doc: 'sequences in VCF or FASTA format (default: None)'
  type: string?
  inputBinding:
    prefix: --sequences
- id: in_mask
  doc: "locations to be masked in either BED file format, DRM\nformat, or one 1-indexed\
    \ site per line. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --mask
- id: in_mask_from_beginning
  doc: "FASTA Only: Number of sites to mask from beginning\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --mask-from-beginning
- id: in_mask_from_end
  doc: "FASTA Only: Number of sites to mask from end (default:\n0)"
  type: long?
  inputBinding:
    prefix: --mask-from-end
- id: in_mask_invalid
  doc: 'FASTA Only: Mask invalid nucleotides (default: False)'
  type: boolean?
  inputBinding:
    prefix: --mask-invalid
- id: in_mask_sites
  doc: '1-indexed list of sites to mask (default: None)'
  type: string[]
  inputBinding:
    prefix: --mask-sites
- id: in_output
  doc: 'output file (default: None)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_no_cleanup
  doc: "Leave intermediate files around. May be useful for\ndebugging (default: True)\n"
  type: boolean?
  inputBinding:
    prefix: --no-cleanup
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.2.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- mask
