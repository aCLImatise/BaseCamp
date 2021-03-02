class: CommandLineTool
id: jcast.cwl
inputs:
- id: in_out
  doc: 'name of the output files [default: psq_out]'
  type: string?
  inputBinding:
    prefix: --out
- id: in_read
  doc: 'minimum read counts to consider [default: 1]'
  type: long?
  inputBinding:
    prefix: --read
- id: in_canonical
  doc: "write out canonical protein sequence even if\ntranscriptslices are untranslatable\
    \ [default: True]"
  type: string?
  inputBinding:
    prefix: --canonical
- id: in_p_value
  doc: "discard junctions with rMATS pvalue below this\nthreshold [default: 0.01]\n"
  type: double?
  inputBinding:
    prefix: --pvalue
- id: in_r_mats_folder
  doc: path to folder storing rMATS output
  type: string
  inputBinding:
    position: 0
- id: in_gtf_file
  doc: path to Ensembl gtf file
  type: string
  inputBinding:
    position: 1
- id: in_genome
  doc: path to genome file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jcast:0.3.1--py_0
cwlVersion: v1.1
baseCommand:
- jcast
