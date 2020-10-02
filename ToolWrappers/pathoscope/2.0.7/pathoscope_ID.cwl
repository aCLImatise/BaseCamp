class: CommandLineTool
id: pathoscope_ID.cwl
inputs:
- id: in_out_matrix
  doc: Output alignment matrix
  type: boolean
  inputBinding:
    prefix: --outMatrix
- id: in_no_updated_align_file
  doc: Do not generate an updated alignment file
  type: boolean
  inputBinding:
    prefix: --noUpdatedAlignFile
- id: in_no_display_cut_off
  doc: Do not cutoff display of genomes, even if it is
  type: boolean
  inputBinding:
    prefix: --noDisplayCutoff
- id: in_em_epsilon
  doc: EM Algorithm Epsilon cutoff
  type: string
  inputBinding:
    prefix: -emEpsilon
- id: in_maxiter
  doc: EM Algorithm maximum iterations
  type: string
  inputBinding:
    prefix: -maxIter
- id: in_pi_prior
  doc: "EM Algorithm Pi Prior equivalent to adding n unique\nreads (Default: n=0)"
  type: long
  inputBinding:
    prefix: -piPrior
- id: in_theta_prior
  doc: "EM Algorithm Theta Prior equivalent to adding n non-\nunique reads (Default:\
    \ n=0)"
  type: long
  inputBinding:
    prefix: -thetaPrior
- id: in_exp_tag
  doc: "Experiment tag added to output file for easy\nidentification (Default: pathoid)"
  type: File
  inputBinding:
    prefix: -expTag
- id: in_outdir
  doc: Output Directory (Default=. (current directory))
  type: Directory
  inputBinding:
    prefix: -outDir
- id: in_file_type
  doc: 'Alignment Format: sam/bl8/gnu-sam (Default: sam)'
  type: long
  inputBinding:
    prefix: -fileType
- id: in_align_file
  doc: "Alignment file path\n"
  type: File
  inputBinding:
    prefix: -alignFile
- id: in_insignificant
  doc: -scoreCutoff ID_SCORE_CUTOFF
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exp_tag
  doc: "Experiment tag added to output file for easy\nidentification (Default: pathoid)"
  type: File
  outputBinding:
    glob: $(inputs.in_exp_tag)
- id: out_outdir
  doc: Output Directory (Default=. (current directory))
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- pathoscope
- ID
