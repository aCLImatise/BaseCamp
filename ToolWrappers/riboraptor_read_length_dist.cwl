class: CommandLineTool
id: riboraptor_read_length_dist.cwl
inputs:
- id: in_bam
  doc: Path to BAM file  [required]
  type: File
  inputBinding:
    prefix: --bam
- id: in_save_to
  doc: Path to write read length dist tsv output
  type: long
  inputBinding:
    prefix: --saveto
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- riboraptor
- read-length-dist
