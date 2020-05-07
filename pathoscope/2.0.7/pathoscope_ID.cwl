class: CommandLineTool
id: pathoscope_ID.cwl
inputs:
- id: out_matrix
  doc: Output alignment matrix
  type: boolean
  inputBinding:
    prefix: --outMatrix
- id: no_updated_align_file
  doc: Do not generate an updated alignment file
  type: boolean
  inputBinding:
    prefix: --noUpdatedAlignFile
- id: no_display_cut_off
  doc: Do not cutoff display of genomes, even if it is insignificant
  type: boolean
  inputBinding:
    prefix: --noDisplayCutoff
- id: score_cut_off
  doc: Score Cutoff
  type: string
  inputBinding:
    prefix: -scoreCutoff
- id: em_epsilon
  doc: EM Algorithm Epsilon cutoff
  type: string
  inputBinding:
    prefix: -emEpsilon
- id: maxiter
  doc: EM Algorithm maximum iterations
  type: string
  inputBinding:
    prefix: -maxIter
- id: pi_prior
  doc: 'EM Algorithm Pi Prior equivalent to adding n unique reads (Default: n=0)'
  type: string
  inputBinding:
    prefix: -piPrior
- id: theta_prior
  doc: 'EM Algorithm Theta Prior equivalent to adding n non- unique reads (Default:
    n=0)'
  type: string
  inputBinding:
    prefix: -thetaPrior
- id: exp_tag
  doc: 'Experiment tag added to output file for easy identification (Default: pathoid)'
  type: string
  inputBinding:
    prefix: -expTag
- id: outdir
  doc: Output Directory (Default=. (current directory))
  type: string
  inputBinding:
    prefix: -outDir
- id: file_type
  doc: 'Alignment Format: sam/bl8/gnu-sam (Default: sam)'
  type: string
  inputBinding:
    prefix: -fileType
- id: align_file
  doc: Alignment file path
  type: string
  inputBinding:
    prefix: -alignFile
outputs: []
cwlVersion: v1.1
baseCommand:
- pathoscope
- ID
