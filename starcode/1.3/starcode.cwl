class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/starcode.cwl
inputs:
- id: dist
  doc: ': maximum Levenshtein distance (default auto)'
  type: boolean
  inputBinding:
    prefix: --dist
- id: threads
  doc: ': number of concurrent threads (default 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: quiet
  doc: ': quiet output (default verbose)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: sphere
  doc: ': use sphere clustering algorithm'
  type: boolean
  inputBinding:
    prefix: --sphere
- id: connected_comp
  doc: ': cluster connected components'
  type: boolean
  inputBinding:
    prefix: --connected-comp
- id: input
  doc: ': input file (default stdin)'
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: ': output file (default stdout)'
  type: boolean
  inputBinding:
    prefix: --output
- id: input_one
  doc: ': input file 1'
  type: boolean
  inputBinding:
    prefix: --input1
- id: input_two
  doc: ': input file 2'
  type: boolean
  inputBinding:
    prefix: --input2
- id: output_one
  doc: ': output file1 (default input1-starcode.fastq)'
  type: boolean
  inputBinding:
    prefix: --output1
- id: output_two
  doc: ': output file2 (default input2-starcode.fastq)'
  type: boolean
  inputBinding:
    prefix: --output2
- id: non_redundant
  doc: ': remove redundant sequences from input file(s)'
  type: boolean
  inputBinding:
    prefix: --non-redundant
- id: print_clusters
  doc: ': outputs cluster compositions'
  type: boolean
  inputBinding:
    prefix: --print-clusters
- id: seq_id
  doc: ': print sequence id numbers (1-based)'
  type: boolean
  inputBinding:
    prefix: --seq-id
outputs: []
cwlVersion: v1.1
baseCommand:
- starcode
