class: CommandLineTool
id: sga_index.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: algorithm
  doc: 'BWT construction algorithm. STR can be: sais - induced sort algorithm, slower
    but works for very long sequences (default) ropebwt - very fast and memory efficient.
    use this for short (<200bp) reads'
  type: string
  inputBinding:
    prefix: --algorithm
- id: disk
  doc: use disk-based BWT construction algorithm. The suffix array/BWT will be constructed
    for batchs of NUM reads at a time. To construct the suffix array of 200 megabases
    of sequence requires ~2GB of memory, set this parameter accordingly.
  type: string
  inputBinding:
    prefix: --disk
- id: threads
  doc: 'use NUM threads to construct the index (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: check
  doc: validate that the suffix array/bwt is correct
  type: boolean
  inputBinding:
    prefix: --check
- id: prefix
  doc: write index to file using PREFIX instead of prefix of READSFILE
  type: string
  inputBinding:
    prefix: --prefix
- id: no_reverse
  doc: suppress construction of the reverse BWT. Use this option when building the
    index for reads that will be error corrected using the k-mer corrector, which
    only needs the forward index
  type: boolean
  inputBinding:
    prefix: --no-reverse
- id: no_forward
  doc: suppress construction of the forward BWT. Use this option when building the
    forward and reverse index separately
  type: boolean
  inputBinding:
    prefix: --no-forward
- id: no_sai
  doc: suppress construction of the SAI file. This option only applies to -a ropebwt
  type: boolean
  inputBinding:
    prefix: --no-sai
- id: gap_array
  doc: use N bits of storage for each element of the gap array. Acceptable values
    are 4,8,16 or 32. Lower values can substantially reduce the amount of memory required
    at the cost of less predictable memory usage. When this value is set to 32, the
    memory requirement is essentially deterministic and requires ~5N bytes where N
    is the size of the FM-index of READS2. The default value is 8.
  type: string
  inputBinding:
    prefix: --gap-array
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- index
