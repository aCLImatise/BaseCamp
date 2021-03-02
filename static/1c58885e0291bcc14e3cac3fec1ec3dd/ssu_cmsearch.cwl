class: CommandLineTool
id: ssu_cmsearch.cwl
inputs:
- id: in_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_configure_cmhmm_glocal
  doc: ': configure CM/HMM for glocal alignment [default: local]'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_append_posterior_probabilities
  doc: ': append posterior probabilities to hit alignments'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_annotate_noncompensatory_bps
  doc: ": annotate non-compensatory bps in output alignments with 'x'"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_annotate_negative_scoring
  doc: ": annotate negative scoring non-canonical bps with 'v'"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_set_z_database
  doc: ': set Z (database size in *Mb*) to <x> for E-value calculations'
  type: long?
  inputBinding:
    prefix: -Z
- id: in_top_only
  doc: ': only search the top strand'
  type: boolean?
  inputBinding:
    prefix: --toponly
- id: in_bottom_only
  doc: ': only search the bottom strand'
  type: boolean?
  inputBinding:
    prefix: --bottomonly
- id: in_forecast
  doc: ": don't do search, forecast running time with <n> processors"
  type: string?
  inputBinding:
    prefix: --forecast
- id: in_in_format
  doc: ': specify the input file is in format <x>, not FASTA'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_mx_size
  doc: ': set maximum allowable HMM banded DP matrix size to <x> Mb'
  type: long?
  inputBinding:
    prefix: --mxsize
- id: in_devhelp
  doc: ': show list of undocumented developer options'
  type: boolean?
  inputBinding:
    prefix: --devhelp
- id: in_inside
  doc: ': use scanning CM Inside algorithm  [default]'
  type: boolean?
  inputBinding:
    prefix: --inside
- id: in_cy_k
  doc: ': use scanning CM CYK algorithm'
  type: boolean?
  inputBinding:
    prefix: --cyk
- id: in_forward
  doc: ': use scanning HMM Forward algorithm'
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_viterbi
  doc: ': use scanning HMM Viterbi algorithm'
  type: boolean?
  inputBinding:
    prefix: --viterbi
- id: in_use_cutoff_evalue
  doc: ': use cutoff E-value of <x> for final round of search  [1.0]  (x>0.)'
  type: double?
  inputBinding:
    prefix: -E
- id: in_use_bit_score
  doc: ': use cutoff bit score of <x> for final round of search  [0.0]'
  type: double?
  inputBinding:
    prefix: -T
- id: in_nc
  doc: ': use CM Rfam NC noise cutoff as cutoff bit score'
  type: boolean?
  inputBinding:
    prefix: --nc
- id: in_ga
  doc: ': use CM Rfam GA gathering threshold as cutoff bit score'
  type: boolean?
  inputBinding:
    prefix: --ga
- id: in_tc
  doc: ': use CM Rfam TC trusted cutoff as cutoff bit score'
  type: boolean?
  inputBinding:
    prefix: --tc
- id: in_no_qdb
  doc: ': do not use QDBs in final round of searching'
  type: boolean?
  inputBinding:
    prefix: --no-qdb
- id: in_beta
  doc: ': set tail loss prob for QDB calculation to <x>  [1e-15]  (0<x<1)'
  type: double?
  inputBinding:
    prefix: --beta
- id: in_h_banded
  doc: ': calculate and use HMM bands in final round of CM search'
  type: boolean?
  inputBinding:
    prefix: --hbanded
- id: in_tau
  doc: ': set tail loss prob for --hbanded to <x>  [1e-7]  (0<x<1)'
  type: double?
  inputBinding:
    prefix: --tau
- id: in_fil_no_hmm
  doc: ': do not filter with HMM Forward algorithm'
  type: boolean?
  inputBinding:
    prefix: --fil-no-hmm
- id: in_fil_no_qdb
  doc: ': do not filter with CM banded CYK'
  type: boolean?
  inputBinding:
    prefix: --fil-no-qdb
- id: in_fil_beta
  doc: ': set tail loss prob for QDB filter to <x>  [1e-10]  (x>0)'
  type: double?
  inputBinding:
    prefix: --fil-beta
- id: in_fil_t_qdb
  doc: ': set QDB CM filter cutoff bit score as <x>  [0.0]'
  type: double?
  inputBinding:
    prefix: --fil-T-qdb
- id: in_fil_t_hmm
  doc: ': set HMM filter cutoff bit score as <x>  [3.0]'
  type: double?
  inputBinding:
    prefix: --fil-T-hmm
- id: in_fil_e_qdb
  doc: ': set QDB CM filter cutoff E-value as <x>'
  type: string?
  inputBinding:
    prefix: --fil-E-qdb
- id: in_fil_e_hmm
  doc: ': set HMM filter cutoff E-value as <x>'
  type: string?
  inputBinding:
    prefix: --fil-E-hmm
- id: in_fil_s_hmm
  doc: ': set HMM filter predicted surv fract as <x>'
  type: string?
  inputBinding:
    prefix: --fil-S-hmm
- id: in_fil_smax_hmm
  doc: ': set maximum HMM survival fraction as <x>  [0.5]'
  type: double?
  inputBinding:
    prefix: --fil-Smax-hmm
- id: in_fil_sm_in_hmm
  doc: ': set minimum HMM survival fraction as <x>  [0.02]'
  type: double?
  inputBinding:
    prefix: --fil-Smin-hmm
- id: in_fil_a_hmm
  doc: ': always filter w/HMM w/surv fract <= <x> from --fil-Smax-hmm'
  type: boolean?
  inputBinding:
    prefix: --fil-A-hmm
- id: in_hmm_w
  doc: ': set HMM window size as <n>  (n>1)'
  type: long?
  inputBinding:
    prefix: --hmm-W
- id: in_hmm_cw
  doc: ': set HMM window size as <x> * consensus length  (x>0.01)'
  type: long?
  inputBinding:
    prefix: --hmm-cW
- id: in_no_align
  doc: ": find start/stop/score only; don't do alignments"
  type: boolean?
  inputBinding:
    prefix: --noalign
- id: in_aln_h_banded
  doc: ': use HMM bands to align hits'
  type: boolean?
  inputBinding:
    prefix: --aln-hbanded
- id: in_aln_opt_acc
  doc: ': align hits with the optimal accuracy algorithm, not CYK'
  type: boolean?
  inputBinding:
    prefix: --aln-optacc
- id: in_cm_idx
  doc: ': only search with CM number <n>    in the CM file  (n>0)'
  type: long?
  inputBinding:
    prefix: --cm-idx
- id: in_cm_name
  doc: ': only search with the CM named <s> in the CM file'
  type: File?
  inputBinding:
    prefix: --cm-name
- id: in_tab_file
  doc: ': save hits in tabular format to file <f>'
  type: File?
  inputBinding:
    prefix: --tabfile
- id: in_gc_file
  doc: ': save GC content stats of target sequence file to <f>'
  type: File?
  inputBinding:
    prefix: --gcfile
- id: in_rna
  doc: ': output hit alignments as RNA sequence data  [default]'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': output hit alignments as DNA (not RNA) sequence data'
  type: boolean?
  inputBinding:
    prefix: --dna
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
- id: out_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_direct_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-cmsearch
