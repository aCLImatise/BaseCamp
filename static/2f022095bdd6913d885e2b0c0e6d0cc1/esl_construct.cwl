class: CommandLineTool
id: esl_construct.cwl
inputs:
- id: in_print_info_conflicting
  doc: ': print info on all conflicting bps in individual structures'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__be_verbose
  doc: ': be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_set_sscons_max
  doc: ': set SS_cons as max set of non-conflicting bps from indi SSs'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_remove_sscons_basepairs
  doc: ': remove SS_cons basepairs that conflicts with > 0 indi SS'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_set_sscons_indi
  doc: ': set SS_cons as indi SS with max bps consistent with SS_cons'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_rfc
  doc: ': with -c, set RF annotation as seq SS_cons structure comes from'
  type: boolean?
  inputBinding:
    prefix: --rfc
- id: in_indi
  doc: ': define SS_cons as individual SS for sequence <x>'
  type: string?
  inputBinding:
    prefix: --indi
- id: in_r_find_i
  doc: ': with --indi <x>, define RF annotation as <x>'
  type: boolean?
  inputBinding:
    prefix: --rfindi
- id: in_f_freq
  doc: ': aln cols i:j become SS_cons bps if paired in > <x> indi SS'
  type: string?
  inputBinding:
    prefix: --ffreq
- id: in_fm_in
  doc: ': same as --ffreq but find min <x> that gives consistent SS_cons'
  type: boolean?
  inputBinding:
    prefix: --fmin
- id: in_output_new_alignment
  doc: ': output a new alignment to file <f>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_pfam
  doc: ': output alignment in Pfam (non-interleaved, 1 line/seq) format'
  type: boolean?
  inputBinding:
    prefix: --pfam
- id: in_list_seqs_indi
  doc: ': list seqs w/> 0 indi bp that conflicts w/a SS_cons bp to file <f>'
  type: File?
  inputBinding:
    prefix: -l
- id: in_lmax
  doc: ': with -l, change maximum allowed conflicts of 0 to <x>  [0]  (n>=0)'
  type: long?
  inputBinding:
    prefix: --lmax
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_new_alignment
  doc: ': output a new alignment to file <f>'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_new_alignment)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- esl-construct
