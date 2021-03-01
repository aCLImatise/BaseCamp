class: CommandLineTool
id: ssu_cmalign.cwl
inputs:
- id: in_output_alignment_file
  doc: ': output the alignment to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_align_locally_model
  doc: ': align locally w.r.t. the model'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_quiet_suppress_banner
  doc: ': quiet; suppress banner and scores, print only the alignment'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_metacm_mode_cmfile
  doc: ': meta-cm mode: <cmfile> is a meta-cm built from aln in <f>'
  type: string?
  inputBinding:
    prefix: -M
- id: in_i_leaved
  doc: ': output alnment in interleaved Stockholm format (not 1 line/seq)'
  type: boolean?
  inputBinding:
    prefix: --ileaved
- id: in_no_prob
  doc: ': do not append posterior probabilities to alignment'
  type: boolean?
  inputBinding:
    prefix: --no-prob
- id: in_in_format
  doc: ': specify the input file is in format <x>, not FASTA'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_chunk
  doc: ': num seqs for each temp alnment, for saving memory  [1000]'
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_devhelp
  doc: ': show list of undocumented developer options'
  type: boolean?
  inputBinding:
    prefix: --devhelp
- id: in_opt_acc
  doc: ': align with the Holmes/Durbin optimal accuracy algorithm'
  type: boolean?
  inputBinding:
    prefix: --optacc
- id: in_cy_k
  doc: ': align with the CYK algorithm'
  type: boolean?
  inputBinding:
    prefix: --cyk
- id: in_sample
  doc: ': sample alignment of each seq from posterior distribution'
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_wsample_set_seed
  doc: ': w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_viterbi
  doc: ': align to a CM Plan 9 HMM with the Viterbi algorithm'
  type: boolean?
  inputBinding:
    prefix: --viterbi
- id: in_sub
  doc: ': build sub CM for columns b/t HMM predicted start/end points'
  type: boolean?
  inputBinding:
    prefix: --sub
- id: in_small
  doc: ': use divide and conquer (d&c) alignment algorithm'
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_h_banded
  doc: ': accelerate using CM plan 9 HMM derived bands  [default]'
  type: boolean?
  inputBinding:
    prefix: --hbanded
- id: in_non_banded
  doc: ': do not use bands to accelerate aln algorithm'
  type: boolean?
  inputBinding:
    prefix: --nonbanded
- id: in_tau
  doc: ': set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)'
  type: double?
  inputBinding:
    prefix: --tau
- id: in_mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb  [2048.0]  (x>0.)'
  type: long?
  inputBinding:
    prefix: --mxsize
- id: in_rna
  doc: ': output alignment as RNA sequence data'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': output alignment as DNA (not RNA) sequence data'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_match_only
  doc: ': include only match columns in output alignment'
  type: boolean?
  inputBinding:
    prefix: --matchonly
- id: in_with_ali
  doc: ': incl. alignment in <f> (must be aln <cm file> was built from)'
  type: File?
  inputBinding:
    prefix: --withali
- id: in_with_p_knots
  doc: ': incl. structure (w/pknots) from <f> from --withali <f>'
  type: boolean?
  inputBinding:
    prefix: --withpknots
- id: in_rf
  doc: ': --rf was originally used with cmbuild'
  type: boolean?
  inputBinding:
    prefix: --rf
- id: in_gap_thresh
  doc: ': --gapthresh <x> was originally used with cmbuild  [0.5]'
  type: double?
  inputBinding:
    prefix: --gapthresh
- id: in_cm_idx
  doc: ': only align seqs with CM number <n>    in the CM file  (n>0)'
  type: long?
  inputBinding:
    prefix: --cm-idx
- id: in_cm_name
  doc: ': only align seqs with the CM named <s> in the CM file'
  type: File?
  inputBinding:
    prefix: --cm-name
- id: in_t_file
  doc: ': dump individual sequence parsetrees to file <f>'
  type: File?
  inputBinding:
    prefix: --tfile
- id: in_i_file
  doc: ': dump information on per-sequence inserts to file <f>'
  type: File?
  inputBinding:
    prefix: --ifile
- id: in_el_file
  doc: ': dump information on per-sequence EL inserts to file <f>'
  type: File?
  inputBinding:
    prefix: --elfile
- id: in_s_file
  doc: ': dump alignment score information to file <f>'
  type: File?
  inputBinding:
    prefix: --sfile
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
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
- ssu-cmalign
