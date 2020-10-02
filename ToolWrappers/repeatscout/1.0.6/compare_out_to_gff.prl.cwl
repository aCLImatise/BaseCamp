class: CommandLineTool
id: compare_out_to_gff.prl.cwl
inputs:
- id: in_gff
  doc: "A GFF-formatted file of features. More than one file may be specified\nwith\
    \ multiple --gff options."
  type: boolean
  inputBinding:
    prefix: --gff
- id: in_fasta_formatted_file
  doc: "A fasta formatted file. If this is given, then sequences that are under\n\
    (over) the overlap threshold will be in the output. This is a sequence\nfilter."
  type: File
  inputBinding:
    prefix: --f
- id: in_threshold
  doc: "The maximum (minimum) amount of overlap tolerated by any one type of\nrepeat."
  type: boolean
  inputBinding:
    prefix: --threshold
- id: in_over
  doc: "Determines if the threshold is a minimum or a maximum (defaults to\nmaximum;\
    \ including --over makes it a minimum)"
  type: boolean
  inputBinding:
    prefix: --over
- id: in_instances
  doc: "Determines how the overlap calculation is done. If this is not\nspecified,\
    \ the overlap is calculated by bases: if 40 bases of a repeat\nelement overlaps\
    \ a feature in one of the GFF files, it is counted as 40\nbases. The sum is taken\
    \ over all features and all repeats of a given\ntype and divided by the total\
    \ length of the repeat. If --instances is\nspecified, the \"overlap\" is considered\
    \ to be the number of instances of\na given type that overlap any feature, divided\
    \ by the total number of\ninstances of that type."
  type: boolean
  inputBinding:
    prefix: --instances
- id: in_bugs
  doc: "None known. This program is remarkably slow, though, and could be sped\nup\
    \ significantly with a very easy fix.\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fasta_formatted_file
  doc: "A fasta formatted file. If this is given, then sequences that are under\n\
    (over) the overlap threshold will be in the output. This is a sequence\nfilter."
  type: File
  outputBinding:
    glob: $(inputs.in_fasta_formatted_file)
cwlVersion: v1.1
baseCommand:
- compare-out-to-gff.prl
