class: CommandLineTool
id: cobs_classic_construct_random.cwl
inputs:
- id: in_document_size
  doc: 'number of random 31-mers in document, default: 1000000'
  type: boolean?
  inputBinding:
    prefix: --document-size
- id: in_num_documents
  doc: 'number of random documents in index, default: 10000'
  type: boolean?
  inputBinding:
    prefix: --num-documents
- id: in_seed
  doc: random seed
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_signature_size
  doc: "number of bits of the signatures (vertical size),\ndefault: 2 Mi\n"
  type: boolean?
  inputBinding:
    prefix: --signature-size
- id: in_out_file
  doc: path to the output file
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: path to the output file
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- classic-construct-random
