class: CommandLineTool
id: overlap2dot.cwl
inputs:
- id: in_reads
  doc: reads file (string [=])
  type: boolean
  inputBinding:
    prefix: --reads
- id: in_overlaps
  doc: overlaps file (string [=])
  type: boolean
  inputBinding:
    prefix: --overlaps
- id: in_reads_format
  doc: 'reads format; supported: fasta, fastq, afg (string [=fasta])'
  type: boolean
  inputBinding:
    prefix: --reads_format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- overlap2dot
