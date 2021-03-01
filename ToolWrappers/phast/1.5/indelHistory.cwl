class: CommandLineTool
id: indelHistory.cwl
inputs:
- id: in_msa_format
  doc: "|MAF|SS|....\nRead alignment in specified file format (default FASTA)."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_output_alignment
  doc: "Instead of a summary of indels only, output an alignment in FASTA\nformat\
    \ of sequences for all ancestral and leaf nodes."
  type: boolean?
  inputBinding:
    prefix: --output-alignment
- id: in_read_history
  doc: "Read an indel history directly from the specified file.  Useful for\ndebugging.\
    \  The alignment and tree arguments are not required;\nhowever in an alignment\
    \ is given with --read-history and\n--output-alignment, then actual bases can\
    \ be output for leaf\nspecies."
  type: File?
  inputBinding:
    prefix: --read-history
- id: in_i_a_names
  doc: "Assume ancestral sequences in alignment.fa are named according to\nthe convention\
    \ used by Mathieu Blanchette's inferAncestors program,\ne.g., \"RAT+MOUSE+RABBIT+\"\
    \ for the last common ancestor of \"rat\",\n\"mouse\", and \"rabbit\"."
  type: boolean?
  inputBinding:
    prefix: --ia-names
- id: in_format_dot
  doc: The specified alignment may either contain sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_read_history
  doc: "Read an indel history directly from the specified file.  Useful for\ndebugging.\
    \  The alignment and tree arguments are not required;\nhowever in an alignment\
    \ is given with --read-history and\n--output-alignment, then actual bases can\
    \ be output for leaf\nspecies."
  type: File?
  outputBinding:
    glob: $(inputs.in_read_history)
hints: []
cwlVersion: v1.1
baseCommand:
- indelHistory
