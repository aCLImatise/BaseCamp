class: CommandLineTool
id: cobs_doc_list.cwl
inputs:
- id: in_file_type
  doc: "\"list\" to read a file list, or filter documents by file type\n(any, text,\
    \ cortex, fasta, fastq, etc)"
  type: boolean?
  inputBinding:
    prefix: --file-type
- id: in_term_size
  doc: 'term size (k-mer size), default: 31'
  type: boolean?
  inputBinding:
    prefix: --term-size
- id: in_path
  doc: path to documents to list
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- doc-list
