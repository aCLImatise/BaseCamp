class: CommandLineTool
id: kallisto_inspect.cwl
inputs:
- id: in_gfa
  doc: Filename for GFA output of T-DBG
  type: File?
  inputBinding:
    prefix: --gfa
- id: in_gtf
  doc: Filename for GTF file
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_bed
  doc: 'Filename for BED output (default: index + ".bed")'
  type: File?
  inputBinding:
    prefix: --bed
- id: in_index_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gfa
  doc: Filename for GFA output of T-DBG
  type: File?
  outputBinding:
    glob: $(inputs.in_gfa)
- id: out_bed
  doc: 'Filename for BED output (default: index + ".bed")'
  type: File?
  outputBinding:
    glob: $(inputs.in_bed)
hints: []
cwlVersion: v1.1
baseCommand:
- kallisto
- inspect
