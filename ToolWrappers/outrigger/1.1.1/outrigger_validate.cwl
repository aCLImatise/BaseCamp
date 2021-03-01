class: CommandLineTool
id: outrigger_validate.cwl
inputs:
- id: in_fast_a
  doc: "Location of the genome fasta file for which to get the\nsplice site sequences\
    \ from"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_genome
  doc: "Either the genome name (e.g. \"mm10\" or \"hg19\") or\nlocation of the genome\
    \ chromosome sizes file for\n\"bedtools flank\" to make sure we do not accidentally\n\
    ask for genome positions that are outside of the\ndefined range"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_index
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is\n./outrigger_output/index, which is relative to the\ndirectory where you\
    \ called this program, assuming you\nhave called \"outrigger psi\" in the same\
    \ folder as you\ncalled \"outrigger index\")."
  type: Directory?
  inputBinding:
    prefix: --index
- id: in_output
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is ./outrigger_output,\nwhich is relative to the directory where you called\n\
    the program)."
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_valid_splice_sites
  doc: "The intron-definition based splice sites that are\nallowed in the data, which\
    \ is in the format 5'/3' of\nthe intron, and separated by commas for different\n\
    types. Default is GT/AG,GC/AG,AT/AC, which are the\nmajor and minor spliceosome\
    \ splice sites in mammalian\nsystems."
  type: long?
  inputBinding:
    prefix: --valid-splice-sites
- id: in_debug
  doc: "If given, print debugging logging information to\nstandard out"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_low_memory
  doc: "If set, then use a smaller memory footprint. By\ndefault, this is off.\n"
  type: boolean?
  inputBinding:
    prefix: --low-memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_index
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is\n./outrigger_output/index, which is relative to the\ndirectory where you\
    \ called this program, assuming you\nhave called \"outrigger psi\" in the same\
    \ folder as you\ncalled \"outrigger index\")."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_index)
- id: out_output
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is ./outrigger_output,\nwhich is relative to the directory where you called\n\
    the program)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- outrigger
- validate
