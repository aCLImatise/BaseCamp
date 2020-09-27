class: CommandLineTool
id: depot.cwl
inputs:
- id: in_depot
  doc: depot path (string)
  type: boolean
  inputBinding:
    prefix: --depot
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
- id: in_overlaps_format
  doc: 'overlaps format; supported: mhap, radump (string [=mhap])'
  type: boolean
  inputBinding:
    prefix: --overlaps_format
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
- depot
