class: CommandLineTool
id: amb2chm_psf_crd.py.cwl
inputs:
- id: in_d
  doc: '[--dict dict_file]'
  type: string?
  inputBinding:
    prefix: -d
- id: in_prmtop_file
  doc: Prmtop file
  type: File?
  inputBinding:
    prefix: -p
- id: in_inpcrd_file
  doc: Inpcrd file
  type: File?
  inputBinding:
    prefix: -c
- id: in_psf_file
  doc: PSF file
  type: File?
  inputBinding:
    prefix: -f
- id: in_dict
  doc: Dictionary file name
  type: File?
  inputBinding:
    prefix: --dict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- amb2chm_psf_crd.py
