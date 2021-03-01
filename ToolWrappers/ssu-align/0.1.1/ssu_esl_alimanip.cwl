class: CommandLineTool
id: ssu_esl_alimanip.cwl
inputs:
- id: in_output_alignment_file
  doc: ': output the alignment to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': specify that output format be <s>'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_devhelp
  doc: ': show list of undocumented developer options'
  type: boolean?
  inputBinding:
    prefix: --devhelp
- id: in_ln_fract
  doc: ': remove sequences w/length < <x> fraction of median length'
  type: long?
  inputBinding:
    prefix: --lnfract
- id: in_lx_fract
  doc: ': remove sequences w/length > <x> fraction of median length'
  type: long?
  inputBinding:
    prefix: --lxfract
- id: in_lm_in
  doc: ': remove sequences w/length < <n> residues'
  type: long?
  inputBinding:
    prefix: --lmin
- id: in_lmax
  doc: ': remove sequences w/length > <n> residues'
  type: long?
  inputBinding:
    prefix: --lmax
- id: in_de_trunc
  doc: ": remove seqs w/gaps in >= <n> 5' or 3'-most non-gap #=GC RF cols"
  type: long?
  inputBinding:
    prefix: --detrunc
- id: in_seq_r
  doc: ': remove sequences with names listed in file <f>'
  type: File?
  inputBinding:
    prefix: --seq-r
- id: in_seq_k
  doc: ': remove all seqs *except* those listed in <f>'
  type: string?
  inputBinding:
    prefix: --seq-k
- id: in_small
  doc: ': w/--seq-r or --seq-k use minimal RAM (no seq reordering)'
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_k_reorder
  doc: ': with --seq-k <f>, reorder sequences to order in <f>'
  type: boolean?
  inputBinding:
    prefix: --k-reorder
- id: in_seq_ins
  doc: ': keep only seqs w/an insert after non-gap RF col <n>'
  type: string?
  inputBinding:
    prefix: --seq-ins
- id: in_seq_ni
  doc: ': w/--seq-ins require at least <n> residue insertions  [1]'
  type: long?
  inputBinding:
    prefix: --seq-ni
- id: in_seq_xi
  doc: ': w/--seq-ins require at most  <n> residue insertions  [1000000]'
  type: long?
  inputBinding:
    prefix: --seq-xi
- id: in_trim
  doc: ': trim aligned seqs in <msafile> to subseqs in <f>'
  type: string?
  inputBinding:
    prefix: --trim
- id: in_t_keep_rf
  doc: ': w/--trim keep GC RF annotation in msa, if it exists'
  type: boolean?
  inputBinding:
    prefix: --t-keeprf
- id: in_tree
  doc: ': reorder MSA to tree order following SLC, save Newick tree to <f>'
  type: string?
  inputBinding:
    prefix: --tree
- id: in_reorder
  doc: ': reorder seqs to the order listed in <f>, all seqs must be listed'
  type: string?
  inputBinding:
    prefix: --reorder
- id: in_mask_two_rf
  doc: ': set #=GC RF as x=1, gap=0 from 1/0s in 1-line <f>'
  type: long?
  inputBinding:
    prefix: --mask2rf
- id: in_m_keep_rf
  doc: ": with --mask2rf, do not overwrite nongap RF characters with 'x'"
  type: boolean?
  inputBinding:
    prefix: --m-keeprf
- id: in_num_all
  doc: ': add annotation numbering all columns'
  type: boolean?
  inputBinding:
    prefix: --num-all
- id: in_num_rf
  doc: ': add annotation numbering the non-gap RF columns'
  type: boolean?
  inputBinding:
    prefix: --num-rf
- id: in_rm_gc
  doc: ': remove GC <s> markup, <s> must be RF|SS_cons|SA_cons|PP_cons'
  type: string?
  inputBinding:
    prefix: --rm-gc
- id: in_sindi
  doc: ': annotate individual secondary structures by imposing consensus'
  type: boolean?
  inputBinding:
    prefix: --sindi
- id: in_post_two_pp
  doc: ': convert infernal 0.72-1.0.2 POST posterior prob annotation to PP'
  type: boolean?
  inputBinding:
    prefix: --post2pp
- id: in_amino
  doc: ': <msafile> contains protein alignments'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_alignment_file
  doc: ': output the alignment to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignment_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimanip
