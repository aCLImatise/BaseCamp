class: CommandLineTool
id: ../../../trimmer.py.cwl
inputs:
- id: in_format
  doc: Input read format.
  type: string
  inputBinding:
    prefix: --format
- id: in_out_format
  doc: "Output read format. Default: whatever the input format\nis."
  type: string
  inputBinding:
    prefix: --out-format
- id: in_filt_bases
  doc: 'The bases to filter on. Case-insensitive. Default: N.'
  type: string
  inputBinding:
    prefix: --filt-bases
- id: in_th_res
  doc: "The threshold. The read will be trimmed once the\nproportion of filter bases\
    \ in the window exceed this\nfraction (not a percentage). Default: 0.5."
  type: double
  inputBinding:
    prefix: --thres
- id: in_window
  doc: 'Window size for trimming. Default: 1.'
  type: long
  inputBinding:
    prefix: --window
- id: in_invert
  doc: "Invert the filter bases: filter on bases NOT present\nin the --filt-bases."
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_min_length
  doc: "Set a minimum read length. Reads which are trimmed\nbelow this length will\
    \ be filtered out (omitted\nentirely from the output). Read pairs will be\npreserved:\
    \ both reads in a pair must exceed this\nlength to be kept. Set to 0 to only omit\
    \ empty reads."
  type: long
  inputBinding:
    prefix: --min-length
- id: in_error
  doc: Fail with this error message (useful for Galaxy tool).
  type: string
  inputBinding:
    prefix: --error
- id: in_acgt
  doc: Filter on any non-ACGT base (shortcut for "--invert
  type: boolean
  inputBinding:
    prefix: --acgt
- id: in_iupac
  doc: Filter on any non-IUPAC base (shortcut for "--invert
  type: boolean
  inputBinding:
    prefix: --iupac
- id: in_quiet
  doc: Don't print trimming stats on completion.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_tsv
  doc: ''
  type: boolean
  inputBinding:
    prefix: --tsv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trimmer.py
