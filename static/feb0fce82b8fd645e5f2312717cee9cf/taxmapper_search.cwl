class: CommandLineTool
id: taxmapper_search.cwl
inputs:
- id: in_forward
  doc: Forward reads in fasta or fastq format
  type: File?
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Reads in fasta or fastq format [optional]
  type: File?
  inputBinding:
    prefix: --reverse
- id: in_rap_search
  doc: "Rapsearch path, version >=2.24 [default: rapsearch set\nin PATH variable]"
  type: File?
  inputBinding:
    prefix: --rapsearch
- id: in_database
  doc: Path to RAPSearch database index
  type: File?
  inputBinding:
    prefix: --database
- id: in_out
  doc: 'Basename for output files [default: <input>_hits]'
  type: string?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: "Number of threads [default: 4]\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- search
