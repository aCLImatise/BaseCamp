class: CommandLineTool
id: PrimedRPA.cwl
inputs:
- id: in_run_id
  doc: Desired Run ID
  type: string?
  inputBinding:
    prefix: --RunID
- id: in_prior_align
  doc: 'Optional: Path to Prior Binding File'
  type: File?
  inputBinding:
    prefix: --PriorAlign
- id: in_prior_binding_site
  doc: 'Optional: Path to Prior Binding File'
  type: File?
  inputBinding:
    prefix: --PriorBindingSite
- id: in_input_file
  doc: Path to Input File
  type: File?
  inputBinding:
    prefix: --InputFile
- id: in_input_file_type
  doc: Options [SS,MS,MAS]
  type: File?
  inputBinding:
    prefix: --InputFileType
- id: in_identity_threshold
  doc: Desired Identity Threshold
  type: string?
  inputBinding:
    prefix: --IdentityThreshold
- id: in_conserved_anchor
  doc: Identity Anchor Required
  type: string?
  inputBinding:
    prefix: --ConservedAnchor
- id: in_primer_length
  doc: Desired Primer Length
  type: long?
  inputBinding:
    prefix: --PrimerLength
- id: in_probe_required
  doc: Options [NO,EXO,NFO]
  type: string?
  inputBinding:
    prefix: --ProbeRequired
- id: in_probe_length
  doc: Desired Probe Length
  type: long?
  inputBinding:
    prefix: --ProbeLength
- id: in_amplicon_size_limit
  doc: Amplicon Size Limit
  type: long?
  inputBinding:
    prefix: --AmpliconSizeLimit
- id: in_nucleotide_repeat_limit
  doc: Nucleotide Repeat Limit (i.e 5 = AAAAA)
  type: long?
  inputBinding:
    prefix: --NucleotideRepeatLimit
- id: in_ming_c
  doc: Minimum GC Content
  type: string?
  inputBinding:
    prefix: --MinGC
- id: in_max_gc
  doc: Maximum GC Content
  type: long?
  inputBinding:
    prefix: --MaxGC
- id: in_dimerisation_thresh
  doc: Percentage Dimerisation Tolerated
  type: string?
  inputBinding:
    prefix: --DimerisationThresh
- id: in_background_check
  doc: Options [NO, Path To Background Fasta File]
  type: File?
  inputBinding:
    prefix: --BackgroundCheck
- id: in_cross_reactivity_thresh
  doc: Max Cross Reactivity Threshold
  type: long?
  inputBinding:
    prefix: --CrossReactivityThresh
- id: in_hard_cross_react_filter
  doc: Hard Cross Reactivity Filter
  type: string?
  inputBinding:
    prefix: --HardCrossReactFilter
- id: in_max_sets
  doc: Default Set To 100
  type: long?
  inputBinding:
    prefix: --MaxSets
- id: in_threads
  doc: Default Set To 1
  type: long?
  inputBinding:
    prefix: --Threads
- id: in_background_search_sensitivity
  doc: Options [Basic or Advanced or Fast]
  type: string?
  inputBinding:
    prefix: --BackgroundSearchSensitivity
- id: in_evalue
  doc: Default Set To 1000
  type: long?
  inputBinding:
    prefix: --Evalue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PrimedRPA
