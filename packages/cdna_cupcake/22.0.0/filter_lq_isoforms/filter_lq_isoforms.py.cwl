class: CommandLineTool
id: filter_lq_isoforms.py.cwl
inputs:
- id: in_min_fl_count
  doc: 'Minimum FL count (default: 2).'
  type: long?
  inputBinding:
    prefix: --min_fl_count
- id: in_min_exp_acc
  doc: 'Minimum predicted accuracy (default: 0.99).'
  type: double?
  inputBinding:
    prefix: --min_exp_acc
- id: in_is_fl_nc
  doc: Input FASTQ is FLNC, not LQ
  type: boolean?
  inputBinding:
    prefix: --is_flnc
- id: in_fast_q_filename
  doc: 'LQ FASTQ filename (ex: lq_isoforms.fastq'
  type: string
  inputBinding:
    position: 0
- id: in_output_filename
  doc: Output FASTQ filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- filter_lq_isoforms.py
