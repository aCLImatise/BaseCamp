class: CommandLineTool
id: ../../../esl_alimap.cwl
inputs:
- id: in_quiet_print_mapping
  doc: ": be quiet, don't print mapping of each column"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_mask_a_two_a
  doc: ": mask to <f>:'1'=msa1 aln       col x maps msa2 aln col"
  type: long
  inputBinding:
    prefix: --mask-a2a
- id: in_mask_at_worf
  doc: ": mask to <f>:'1'=msa1 aln       col x maps msa2 nongap RF col"
  type: long
  inputBinding:
    prefix: --mask-a2rf
- id: in_mask_rf_two_a
  doc: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 aln col"
  type: long
  inputBinding:
    prefix: --mask-rf2a
- id: in_mask_rf_two_rf
  doc: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 nongap RF col"
  type: long
  inputBinding:
    prefix: --mask-rf2rf
- id: in_submap
  doc: ': <msafile2> is subaln of <msafile1>, output mask to <f>'
  type: long
  inputBinding:
    prefix: --submap
- id: in_amino
  doc: ': <msafile{1,2}> contain protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': <msafile{1,2}> contain DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': <msafile{1,2}> contain RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-alimap
