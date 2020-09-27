class: CommandLineTool
id: ssu_esl_alistat.cwl
inputs:
- id: in_use_tabular_output
  doc: ': use tabular output, one line per alignment'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_small
  doc: ': use minimal RAM (RAM usage will be independent of aln size)'
  type: boolean
  inputBinding:
    prefix: --small
- id: in_list
  doc: ': output list of sequence names in alignment(s) to file <f>'
  type: File
  inputBinding:
    prefix: --list
- id: in_ic_info
  doc: ': print info on information content alignment column'
  type: string
  inputBinding:
    prefix: --icinfo
- id: in_r_info
  doc: ': print info on # of non-gap residues in each column to <f>'
  type: string
  inputBinding:
    prefix: --rinfo
- id: in_pc_info
  doc: ': print per-column   posterior probability info to <f>'
  type: string
  inputBinding:
    prefix: --pcinfo
- id: in_ps_info
  doc: ': print per-sequence posterior probability info to <f>'
  type: string
  inputBinding:
    prefix: --psinfo
- id: in_i_info
  doc: ': print info on # of insertions b/t all non-gap RF cols to <f>'
  type: string
  inputBinding:
    prefix: --iinfo
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_list
  doc: ': output list of sequence names in alignment(s) to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_list)
cwlVersion: v1.1
baseCommand:
- ssu-esl-alistat
