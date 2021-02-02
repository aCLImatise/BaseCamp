class: CommandLineTool
id: annotate_hits_pyseer.cwl
inputs:
- id: in_bwa
  doc: Location of bwa executable [default=bwa]
  type: string
  inputBinding:
    prefix: --bwa
- id: in_tmp_prefix
  doc: "Directory to store temporary files [default=./]\n"
  type: Directory
  inputBinding:
    prefix: --tmp-prefix
- id: in_km_ers
  doc: Kmers file, filtered output from SEER
  type: string
  inputBinding:
    position: 0
- id: in_references
  doc: "File of reference annotations. First column fasta\nsequence, second column\
    \ gff annotation, third column\n'ref' or 'draft'"
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Output file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- annotate_hits_pyseer
