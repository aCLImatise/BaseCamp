class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sga_merge.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: 'use NUM threads to merge the indices (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: prefix
  doc: write final index to files starting with PREFIX (the default is to concatenate
    the input filenames)
  type: string
  inputBinding:
    prefix: --prefix
- id: remove
  doc: remove the original BWT, SAI and reads files after the merge
  type: boolean
  inputBinding:
    prefix: --remove
- id: gap_array
  doc: use N bits of storage for each element of the gap array. Acceptable values
    are 4,8,16 or 32. Lower values can substantially reduce the amount of memory required
    at the cost of less predictable memory usage. When this value is set to 32, the
    memory requirement is essentially deterministic and requires ~5N bytes where N
    is the size of the FM-index of READS2. The default value is 4.
  type: string
  inputBinding:
    prefix: --gap-array
- id: no_sequence
  doc: Suppress merging of the sequence files. Use this option when merging the index(es)
    separate e.g. in parallel
  type: boolean
  inputBinding:
    prefix: --no-sequence
- id: no_forward
  doc: Suppress merging of the forward index. Use this option when merging the index(es)
    separate e.g. in parallel
  type: boolean
  inputBinding:
    prefix: --no-forward
- id: no_reverse
  doc: Suppress merging of the reverse index. Use this option when merging the index(es)
    separate e.g. in parallel
  type: boolean
  inputBinding:
    prefix: --no-reverse
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- merge
