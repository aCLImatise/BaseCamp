class: CommandLineTool
id: phyluce_align_get_indels_from_alignments.cwl
inputs:
- id: in_out_group
  doc: "OUTGROUP\n[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]\n\
    [--trim {absolute,relative,none}]\n[--cores CORES]"
  type: string
  inputBinding:
    prefix: --outgroup
- id: in_alignments
  doc: The directory containing the alignment files
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: in_trim
  doc: "Count indels only after removing gaps/missing data\nfrom alignment ends"
  type: string
  inputBinding:
    prefix: --trim
- id: in_cores
  doc: The number of cores to use.
  type: long
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_indels_from_alignments
