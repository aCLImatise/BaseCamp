class: CommandLineTool
id: sga_index.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_algorithm
  doc: "BWT construction algorithm. STR can be:\nsais - induced sort algorithm, slower\
    \ but works for very long sequences (default)\nropebwt - very fast and memory\
    \ efficient. use this for short (<200bp) reads"
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_disk
  doc: "use disk-based BWT construction algorithm. The suffix array/BWT will be constructed\n\
    for batchs of NUM reads at a time. To construct the suffix array of 200 megabases\
    \ of sequence\nrequires ~2GB of memory, set this parameter accordingly."
  type: long
  inputBinding:
    prefix: --disk
- id: in_threads
  doc: 'use NUM threads to construct the index (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_check
  doc: validate that the suffix array/bwt is correct
  type: boolean
  inputBinding:
    prefix: --check
- id: in_prefix
  doc: write index to file using PREFIX instead of prefix of READSFILE
  type: File
  inputBinding:
    prefix: --prefix
- id: in_no_reverse
  doc: "suppress construction of the reverse BWT. Use this option when building the\
    \ index\nfor reads that will be error corrected using the k-mer corrector, which\
    \ only needs the forward index"
  type: boolean
  inputBinding:
    prefix: --no-reverse
- id: in_no_forward
  doc: suppress construction of the forward BWT. Use this option when building the
    forward and reverse index separately
  type: boolean
  inputBinding:
    prefix: --no-forward
- id: in_no_sai
  doc: suppress construction of the SAI file. This option only applies to -a ropebwt
  type: boolean
  inputBinding:
    prefix: --no-sai
- id: in_gap_array
  doc: "use N bits of storage for each element of the gap array. Acceptable values\
    \ are 4,8,16 or 32. Lower\nvalues can substantially reduce the amount of memory\
    \ required at the cost of less predictable memory usage.\nWhen this value is set\
    \ to 32, the memory requirement is essentially deterministic and requires ~5N\
    \ bytes where\nN is the size of the FM-index of READS2.\nThe default value is\
    \ 8."
  type: long
  inputBinding:
    prefix: --gap-array
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- index
