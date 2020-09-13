class: CommandLineTool
id: ../../../PrimedLAMP.cwl
inputs:
- id: in_run_id
  doc: Desired Run ID
  type: string
  inputBinding:
    prefix: --RunID
- id: in_input_file
  doc: Path to Target Input Fasta File
  type: File
  inputBinding:
    prefix: --InputFile
- id: in_prior_alignment_summary
  doc: Path to Prior Generated Alignment Summary
  type: File
  inputBinding:
    prefix: --PriorAlignmentSummary
- id: in_prior_oligo_sites
  doc: Path to Prior Generated Oligo Sites
  type: File
  inputBinding:
    prefix: --PriorOligoSites
- id: in_identity_threshold
  doc: Desired Identity Threshold
  type: string
  inputBinding:
    prefix: --IdentityThreshold
- id: in_conserved_anchor
  doc: Identity Anchor Required
  type: string
  inputBinding:
    prefix: --ConservedAnchor
- id: in_primer_length
  doc: Desired Primer Length
  type: long
  inputBinding:
    prefix: --PrimerLength
- id: in_nucleotide_repeat_limit
  doc: Nucleotide Repeat Limit (i.e 5 = AAAAA)
  type: long
  inputBinding:
    prefix: --NucleotideRepeatLimit
- id: in_ming_c
  doc: Minimum GC Content
  type: string
  inputBinding:
    prefix: --MinGC
- id: in_max_gc
  doc: Maximum GC Content
  type: long
  inputBinding:
    prefix: --MaxGC
- id: in_dimerisation_thresh
  doc: Percentage Dimerisation Tolerated
  type: string
  inputBinding:
    prefix: --DimerisationThresh
- id: in_background_check
  doc: Options [NO, Path To Background Fasta File]
  type: File
  inputBinding:
    prefix: --BackgroundCheck
- id: in_blast_db_path
  doc: Path to BlastnDB
  type: File
  inputBinding:
    prefix: --BlastDBPath
- id: in_cross_reactivity_thresh
  doc: Max Cross Reactivity Threshold
  type: long
  inputBinding:
    prefix: --CrossReactivityThresh
- id: in_threads
  doc: Default Set To 1
  type: long
  inputBinding:
    prefix: --Threads
- id: in_monovalent_salt_conc
  doc: Millimolar Concentration (10^-3)
  type: long
  inputBinding:
    prefix: --MonovalentSaltConc
- id: in_divalent_salt_conc
  doc: Millimolar Concentration (10^-3)
  type: long
  inputBinding:
    prefix: --DivalentSaltConc
- id: in_dntp_conc
  doc: Millimolar Concentration (10^-3)
  type: long
  inputBinding:
    prefix: --dNTPConc
- id: in_oligo_conc
  doc: Micromolar Concentration (10^-6)
  type: long
  inputBinding:
    prefix: --OligoConc
- id: in_oligo_conc_pair
  doc: Leave as Default
  type: string
  inputBinding:
    prefix: --OligoConcPair
- id: in_degenerate
  doc: ''
  type: string
  inputBinding:
    prefix: --Degenerate
- id: in_minimum_tm
  doc: ''
  type: string
  inputBinding:
    prefix: --MinimumTm
- id: in_maximum_tm
  doc: ''
  type: string
  inputBinding:
    prefix: --MaximumTm
- id: in_tm_difference_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --TmDifferenceLimit
- id: in_minimum_terminal_delta_g
  doc: ''
  type: string
  inputBinding:
    prefix: --MinimumTerminalDeltaG
- id: in_max_distance_three_to_two
  doc: ''
  type: long
  inputBinding:
    prefix: --MaxDistance3to2
- id: in_max_distance_two_to_l
  doc: ''
  type: long
  inputBinding:
    prefix: --MaxDistance2toL
- id: in_max_distance_two_to_one
  doc: ''
  type: long
  inputBinding:
    prefix: --MaxDistance2to1
- id: in_max_distance_one_to_one
  doc: ''
  type: long
  inputBinding:
    prefix: --MaxDistance1to1
- id: in_max_distance_two_to_two
  doc: ''
  type: long
  inputBinding:
    prefix: --MaxDistance2to2
- id: in_background_search_sensitivity
  doc: Options [Basic or Advanced or Fast]
  type: string
  inputBinding:
    prefix: --BackgroundSearchSensitivity
- id: in_evalue_thresh
  doc: Options [Basic or Advanced or Fast]
  type: string
  inputBinding:
    prefix: --EvalueThresh
- id: in_f_three_set_limit
  doc: Set Limit with for identical F3 Primer
  type: long
  inputBinding:
    prefix: --F3SetLimit
- id: in_loop_primers
  doc: "Include Loop Primers\n"
  type: string
  inputBinding:
    prefix: --LoopPrimers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PrimedLAMP
