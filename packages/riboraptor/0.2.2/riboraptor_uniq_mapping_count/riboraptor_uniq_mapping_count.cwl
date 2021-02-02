class: CommandLineTool
id: riboraptor_uniq_mapping_count.cwl
inputs:
- id: in_bam
  doc: Path to BAM file  [required]
  type: File
  inputBinding:
    prefix: --bam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- riboraptor
- uniq-mapping-count
