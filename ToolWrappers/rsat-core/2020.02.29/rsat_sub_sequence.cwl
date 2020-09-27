class: CommandLineTool
id: rsat_sub_sequence.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -i
- id: in_mask
  doc: "|lower\nMask lower or uppercases, respecively, i.e. replace\nselected case\
    \ by N characters."
  type: string
  inputBinding:
    prefix: -mask
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_frag
  doc: "fragment_file\nThis option allows to specify a list of fragments t be\nretrieved\
    \ from each sequence of the input file.\nEach row contains the coordinates of\
    \ a fragment in 4\nor 5 columns:\n1) fragment ID\n2) sequence ID (must be the\
    \ same as in the sequence file)\n3) fragment start\n4) fragment end\n5) strand\
    \ (optional). If not specified, all\nfragments are taken on the direct strand.\n\
    example:\nfrag1   chr2L   344641  348496  D\nfrag2   chr2L   346419  350309  R\n\
    frag3   chr2R   350781  354418  D"
  type: boolean
  inputBinding:
    prefix: -frag
- id: in_origin
  doc: "| center | end\nReference for calculating positions.\nThe value should be\
    \ chosen according to the sequence\ntype. For instance:\n-origin start for downstream\
    \ sequences\n-origin end for promoter sequences\n-origin center can be useful\
    \ for ChIP-seq peaks, which\ncan have variable lengths, but are supposed to\n\
    be more or less centred on the TF binding\nqsites."
  type: string
  inputBinding:
    prefix: -origin
- id: in_from
  doc: "# starting position\nif not specified, the subsequence starts at 1st position."
  type: boolean
  inputBinding:
    prefix: -from
- id: in_to
  doc: "#   end position\nif not specified, the end of the sequence is used."
  type: boolean
  inputBinding:
    prefix: -to
- id: in_i_format
  doc: input format. Default is fasta
  type: boolean
  inputBinding:
    prefix: -iformat
- id: in_o_format
  doc: output format. Default is fasta
  type: boolean
  inputBinding:
    prefix: -oformat
- id: in_format
  doc: format. Default is fasta
  type: string
  inputBinding:
    prefix: -format
- id: in_rc
  doc: return the reverse complement of the sub-sequences
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_limits
  doc: "add a suffix to sequence IDs to indicate the limits of\nthe sub-sequence."
  type: boolean
  inputBinding:
    prefix: -limits
- id: in_sub_sequence
  doc: 1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
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
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- sub-sequence
