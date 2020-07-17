class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mcast.cwl
inputs:
- id: alpha
  doc: The fraction of all TF binding sites that are binding sites for the TF of interest.
    Used in the calculation of PSP. (default 1.0)
  type: string
  inputBinding:
    prefix: --alpha
- id: b_file
  doc: File containing n-order Markov background model
  type: File
  inputBinding:
    prefix: --bfile
- id: hard_mask
  doc: Nucleotides in lower case will be converted to 'N'  preventing them from being
    considred in motif matches
  type: boolean
  inputBinding:
    prefix: --hardmask
- id: max_gap
  doc: Maximum allowed distance between adjacent hits; (default = 50)
  type: string
  inputBinding:
    prefix: --max-gap
- id: max_stored_scores
  doc: Maximum number of matches that will be stored in memory; (default=100000)
  type: string
  inputBinding:
    prefix: --max-stored-scores
- id: max_total_width
  doc: Maximum combined width of all motifs; (default= no limit)
  type: string
  inputBinding:
    prefix: --max-total-width
- id: motif_p_thresh
  doc: p-value threshold for motif hits; (default = 0.0005).
  type: string
  inputBinding:
    prefix: --motif-pthresh
- id: name_output_not
  doc: Name of output directory. Existing files will not be overwritten. (default=mcast_out)
  type: string
  inputBinding:
    prefix: --o
- id: oc
  doc: Name of output directory. Existing files will be overwritten.
  type: string
  inputBinding:
    prefix: --oc
- id: output_e_thresh
  doc: Print only results with E-values less than <value>. (default = 10.0).
  type: string
  inputBinding:
    prefix: --output-ethresh
- id: output_p_thresh
  doc: 'Print only results with p-values less than <value>. (default: not used).'
  type: string
  inputBinding:
    prefix: --output-pthresh
- id: output_q_thresh
  doc: 'Print only results with q-values less than <value>./ (default: not used).'
  type: string
  inputBinding:
    prefix: --output-qthresh
- id: parse_genomic_coord
  doc: Parse genomic coord. found in sequence headers
  type: boolean
  inputBinding:
    prefix: --parse-genomic-coord
- id: psp
  doc: File containing position specific priors; (default none)
  type: string
  inputBinding:
    prefix: --psp
- id: prior_dist
  doc: File containing distribution of position specific priors; (default none)
  type: string
  inputBinding:
    prefix: --prior-dist
- id: synth
  doc: Use synthetic scores for distribution
  type: boolean
  inputBinding:
    prefix: --synth
- id: seed
  doc: 'Use this seed for the generation of synthetic sequences which are in turn
    used to create synthetic scores. (default: 42)'
  type: string
  inputBinding:
    prefix: --seed
- id: text
  doc: Plain text output only
  type: boolean
  inputBinding:
    prefix: --text
- id: transfac
  doc: 'Motif file is in TRANSFAC format. (default: MEME format)'
  type: boolean
  inputBinding:
    prefix: --transfac
- id: verbosity
  doc: Verbosity of error messagess, with <value> in the range 0-5; (default = 3).
  type: string
  inputBinding:
    prefix: --verbosity
- id: motifs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_database
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mcast
