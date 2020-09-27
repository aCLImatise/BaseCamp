class: CommandLineTool
id: mcast.cwl
inputs:
- id: in_alpha
  doc: "The fraction of all TF binding sites that are binding sites\nfor the TF of\
    \ interest. Used in the calculation of PSP.\n(default 1.0)"
  type: double
  inputBinding:
    prefix: --alpha
- id: in_b_file
  doc: File containing n-order Markov background model
  type: File
  inputBinding:
    prefix: --bfile
- id: in_hard_mask
  doc: "Nucleotides in lower case will be converted to 'N'\npreventing them from being\
    \ considred in motif matches"
  type: boolean
  inputBinding:
    prefix: --hardmask
- id: in_max_gap
  doc: "Maximum allowed distance between adjacent hits;\n(default = 50)"
  type: long
  inputBinding:
    prefix: --max-gap
- id: in_max_stored_scores
  doc: "Maximum number of matches that will be stored in memory;\n(default=100000)"
  type: long
  inputBinding:
    prefix: --max-stored-scores
- id: in_max_total_width
  doc: Maximum combined width of all motifs; (default= no limit)
  type: long
  inputBinding:
    prefix: --max-total-width
- id: in_motif_p_thresh
  doc: p-value threshold for motif hits; (default = 0.0005).
  type: double
  inputBinding:
    prefix: --motif-pthresh
- id: in_name_output_not
  doc: "Name of output directory. Existing files will not be\noverwritten. (default=mcast_out)"
  type: Directory
  inputBinding:
    prefix: --o
- id: in_oc
  doc: Name of output directory. Existing files will be
  type: Directory
  inputBinding:
    prefix: --oc
- id: in_output_p_thresh
  doc: "Print only results with p-values less than <value>.\n(default: not used)."
  type: string
  inputBinding:
    prefix: --output-pthresh
- id: in_output_q_thresh
  doc: "Print only results with q-values less than <value>./\n(default: not used)."
  type: string
  inputBinding:
    prefix: --output-qthresh
- id: in_parse_genomic_coord
  doc: Parse genomic coord. found in sequence headers
  type: boolean
  inputBinding:
    prefix: --parse-genomic-coord
- id: in_psp
  doc: File containing position specific priors; (default none)
  type: File
  inputBinding:
    prefix: --psp
- id: in_prior_dist
  doc: "File containing distribution of position specific priors;\n(default none)"
  type: File
  inputBinding:
    prefix: --prior-dist
- id: in_synth
  doc: Use synthetic scores for distribution
  type: boolean
  inputBinding:
    prefix: --synth
- id: in_seed
  doc: "Use this seed for the generation of synthetic sequences\nwhich are in turn\
    \ used to create synthetic scores.\n(default: 42)"
  type: long
  inputBinding:
    prefix: --seed
- id: in_text
  doc: Plain text output only
  type: boolean
  inputBinding:
    prefix: --text
- id: in_transfac
  doc: 'Motif file is in TRANSFAC format. (default: MEME format)'
  type: boolean
  inputBinding:
    prefix: --transfac
- id: in_verbosity
  doc: "Verbosity of error messagess, with <value> in the range 0-5;\n(default = 3)."
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_overwritten_dot
  doc: --output-ethresh <value>      Print only results with E-values less than <value>.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_not
  doc: "Name of output directory. Existing files will not be\noverwritten. (default=mcast_out)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_name_output_not)
- id: out_oc
  doc: Name of output directory. Existing files will be
  type: Directory
  outputBinding:
    glob: $(inputs.in_oc)
cwlVersion: v1.1
baseCommand:
- mcast
