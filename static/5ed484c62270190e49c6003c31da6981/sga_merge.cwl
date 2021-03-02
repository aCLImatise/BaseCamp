class: CommandLineTool
id: sga_merge.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: 'use NUM threads to merge the indices (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_prefix
  doc: write final index to files starting with PREFIX (the default is to concatenate
    the input filenames)
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_remove
  doc: remove the original BWT, SAI and reads files after the merge
  type: boolean?
  inputBinding:
    prefix: --remove
- id: in_gap_array
  doc: "use N bits of storage for each element of the gap array. Acceptable values\
    \ are 4,8,16 or 32. Lower\nvalues can substantially reduce the amount of memory\
    \ required at the cost of less predictable memory usage.\nWhen this value is set\
    \ to 32, the memory requirement is essentially deterministic and requires ~5N\
    \ bytes where\nN is the size of the FM-index of READS2.\nThe default value is\
    \ 4."
  type: long?
  inputBinding:
    prefix: --gap-array
- id: in_no_sequence
  doc: Suppress merging of the sequence files. Use this option when merging the index(es)
    separate e.g. in parallel
  type: boolean?
  inputBinding:
    prefix: --no-sequence
- id: in_no_forward
  doc: Suppress merging of the forward index. Use this option when merging the index(es)
    separate e.g. in parallel
  type: boolean?
  inputBinding:
    prefix: --no-forward
- id: in_no_reverse
  doc: Suppress merging of the reverse index. Use this option when merging the index(es)
    separate e.g. in parallel
  type: boolean?
  inputBinding:
    prefix: --no-reverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- merge
