class: CommandLineTool
id: starcode.cwl
inputs:
- id: in_dist
  doc: ': maximum Levenshtein distance (default auto)'
  type: boolean?
  inputBinding:
    prefix: --dist
- id: in_threads
  doc: ': number of concurrent threads (default 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: ': quiet output (default verbose)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_cluster_ratio
  doc: ": min size ratio for merging clusters in\nmessage passing (default 5.0)"
  type: boolean?
  inputBinding:
    prefix: --cluster-ratio
- id: in_sphere
  doc: ': use sphere clustering algorithm'
  type: boolean?
  inputBinding:
    prefix: --sphere
- id: in_connected_comp
  doc: ': cluster connected components'
  type: boolean?
  inputBinding:
    prefix: --connected-comp
- id: in_input
  doc: ': input file (default stdin)'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: ': output file (default stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_input_one
  doc: ': input file 1'
  type: boolean?
  inputBinding:
    prefix: --input1
- id: in_input_two
  doc: ': input file 2'
  type: boolean?
  inputBinding:
    prefix: --input2
- id: in_output_one
  doc: ': output file1 (default input1-starcode.fastq)'
  type: boolean?
  inputBinding:
    prefix: --output1
- id: in_output_two
  doc: ': output file2 (default input2-starcode.fastq)'
  type: boolean?
  inputBinding:
    prefix: --output2
- id: in_non_redundant
  doc: ': remove redundant sequences from input file(s)'
  type: boolean?
  inputBinding:
    prefix: --non-redundant
- id: in_print_clusters
  doc: ': outputs cluster compositions'
  type: boolean?
  inputBinding:
    prefix: --print-clusters
- id: in_seq_id
  doc: ': print sequence id numbers (1-based)'
  type: boolean?
  inputBinding:
    prefix: --seq-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: ': output file (default stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- starcode
