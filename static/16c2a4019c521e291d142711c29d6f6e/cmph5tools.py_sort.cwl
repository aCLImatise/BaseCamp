class: CommandLineTool
id: cmph5tools.py_sort.cwl
inputs:
- id: in_outfile
  doc: output filename
  type: File?
  inputBinding:
    prefix: --outFile
- id: in_deep
  doc: "whether a deep sorting should be conducted, i.e. sort\ntheAlignmentArrays\
    \ [False]"
  type: boolean?
  inputBinding:
    prefix: --deep
- id: in_tmpdir
  doc: temporary directory to use when sorting in-place [/tmp]
  type: Directory?
  inputBinding:
    prefix: --tmpDir
- id: in_use_python_indexer
  doc: Whether to use native indexing [False].
  type: boolean?
  inputBinding:
    prefix: --usePythonIndexer
- id: in_in_place
  doc: "Whether to make a temporary copy of the original cmp.h5\nfile before sorting.\n"
  type: boolean?
  inputBinding:
    prefix: --inPlace
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- sort
