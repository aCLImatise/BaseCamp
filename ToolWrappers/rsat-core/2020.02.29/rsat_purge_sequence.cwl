class: CommandLineTool
id: rsat_purge_sequence.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_file_containing_sequence
  doc: "The file containing the sequence to purge.\nIf input_file is not specified,\
    \ the standard input is\nused.  This allows to place the command within a pipe."
  type: File?
  inputBinding:
    prefix: -i
- id: in_format
  doc: format
  type: string?
  inputBinding:
    prefix: -format
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  inputBinding:
    prefix: -o
- id: in_dry_runprint_commands
  doc: "dry run\nprint commands without executing them"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_ml
  doc: '#   match length (default: 40)'
  type: boolean?
  inputBinding:
    prefix: -ml
- id: in_mis
  doc: '#  mismatches (default: 3)'
  type: boolean?
  inputBinding:
    prefix: -mis
- id: in_one_str
  doc: discard duplications on the direct strand only
  type: boolean?
  inputBinding:
    prefix: -1str
- id: in_two_str
  doc: discard duplications on the reverse complement as well
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_del
  doc: "delete repeats instead of masking them\nBy default, repeats are masked, i.e.\
    \ each nucleotide\nwithin a repeat is replaced by the letter n.  When the\noption\
    \ -del is selected, repeats are deleted. This\nmeans that one sequence of input\
    \ can be converted to\nseveral fragments in the output."
  type: boolean?
  inputBinding:
    prefix: -del
- id: in_mask_short
  doc: "Mask (replace by N characters) sequences strictly\nshorter than the specified\
    \ length. This can be useful\nto discard short intergenic segments from the motif\n\
    discovery step, especially when working with bacterial\ngenomes, where short intergenic\
    \ sequences generally\ncorrespond to intra-operon segments."
  type: long?
  inputBinding:
    prefix: -mask_short
- id: in_skip_short
  doc: "Skip sequences strictly shorter than the specified\nlength. Same functionality\
    \ as -mask_short, except that\nshort sequences are not returned at all in the\
    \ output.\nSkipping short sequences can be useful to prevent\nindexing problems,\
    \ when the input files contain\nsequences shorter than the indexing prefix."
  type: long?
  inputBinding:
    prefix: -skip_short
- id: in_no_die
  doc: "The perl script purge-sequence does not die in case\nthe encapsulated programs\
    \ (mkvtree, vmatch) return an\nerror message.\n"
  type: boolean?
  inputBinding:
    prefix: -nodie
- id: in_purge_sequence
  doc: 1999 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- purge-sequence
