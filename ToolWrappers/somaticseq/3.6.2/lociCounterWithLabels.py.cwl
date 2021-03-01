class: CommandLineTool
id: lociCounterWithLabels.py.cwl
inputs:
- id: in_fai_file
  doc: '.fa.fai file (default: None)'
  type: File?
  inputBinding:
    prefix: --fai-file
- id: in_bed_files
  doc: 'BED files (default: None)'
  type: string[]
  inputBinding:
    prefix: --bed-files
- id: in_bed_out
  doc: 'BED file out (default: None)'
  type: File?
  inputBinding:
    prefix: --bed-out
- id: in_labels
  doc: "[BED_LABELS [BED_LABELS ...]], --bed-labels [BED_LABELS [BED_LABELS ...]]\n\
    Use these labels instead of bed file names (default:\nNone)\n"
  type: boolean?
  inputBinding:
    prefix: -labels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bed_out
  doc: 'BED file out (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_bed_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- lociCounterWithLabels.py
