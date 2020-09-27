class: CommandLineTool
id: ssu_esl_alimerge.cwl
inputs:
- id: in_output_final_alignment
  doc: ': output the final alignment to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_print_info_stdout
  doc: ': print info on merge to stdout; requires -o'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_small
  doc: ': use minimal RAM (RAM usage will be independent of aln sizes)'
  type: boolean
  inputBinding:
    prefix: --small
- id: in_rf_only
  doc: ': remove all columns that are gaps in GC RF annotation'
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: in_out_format
  doc: ': specify that output aln be format <s> (see choices above)'
  type: string
  inputBinding:
    prefix: --outformat
- id: in_rna
  doc: ': alignments to merge are RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': alignments to merge are DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_amino
  doc: ': alignments to merge are protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_list
  doc: ''
  type: File
  inputBinding:
    prefix: --list
- id: in_pfam
  doc: a2m
  type: string
  inputBinding:
    position: 0
- id: in_psiblast
  doc: afa
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_final_alignment
  doc: ': output the final alignment to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_final_alignment)
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimerge
