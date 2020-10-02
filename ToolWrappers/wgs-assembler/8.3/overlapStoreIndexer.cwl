class: CommandLineTool
id: overlapStoreIndexer.cwl
inputs:
- id: in_path_overlap_store
  doc: path to overlap store to build the final index for
  type: File
  inputBinding:
    prefix: -o
- id: in_number_slices_used
  doc: number of slices used in bucketizing/sorting
  type: long
  inputBinding:
    prefix: -F
- id: in_explicitly_test_index
  doc: explicitly test a previously constructed index
  type: string
  inputBinding:
    prefix: -t
- id: in_when_testing_also
  doc: "when testing, also create a new 'idx.fixed' which might resolve\nrare problems"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_delete
  doc: remove intermediate files when the index is successfully created
  type: boolean
  inputBinding:
    prefix: -delete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- overlapStoreIndexer
