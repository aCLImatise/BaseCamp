class: CommandLineTool
id: PrimedRPA.cwl
inputs:
- id: run_id
  doc: Desired Run ID
  type: string
  inputBinding:
    prefix: --RunID
- id: prior_align
  doc: 'Optional: Path to Prior Binding File'
  type: string
  inputBinding:
    prefix: --PriorAlign
- id: prior_binding_site
  doc: 'Optional: Path to Prior Binding File'
  type: string
  inputBinding:
    prefix: --PriorBindingSite
- id: input_file
  doc: Path to Input File
  type: string
  inputBinding:
    prefix: --InputFile
- id: input_file_type
  doc: Options [SS,MS,MAS]
  type: string
  inputBinding:
    prefix: --InputFileType
- id: identity_threshold
  doc: Desired Identity Threshold
  type: string
  inputBinding:
    prefix: --IdentityThreshold
- id: conserved_anchor
  doc: Identity Anchor Required
  type: string
  inputBinding:
    prefix: --ConservedAnchor
- id: primer_length
  doc: Desired Primer Length
  type: string
  inputBinding:
    prefix: --PrimerLength
- id: probe_required
  doc: Options [NO,EXO,NFO]
  type: string
  inputBinding:
    prefix: --ProbeRequired
- id: probe_length
  doc: Desired Probe Length
  type: string
  inputBinding:
    prefix: --ProbeLength
- id: amplicon_size_limit
  doc: Amplicon Size Limit
  type: string
  inputBinding:
    prefix: --AmpliconSizeLimit
- id: nucleotide_repeat_limit
  doc: Nucleotide Repeat Limit (i.e 5 = AAAAA)
  type: string
  inputBinding:
    prefix: --NucleotideRepeatLimit
- id: ming_c
  doc: Minimum GC Content
  type: long
  inputBinding:
    prefix: --MinGC
- id: max_gc
  doc: Maximum GC Content
  type: long
  inputBinding:
    prefix: --MaxGC
- id: dimerisation_thresh
  doc: Percentage Dimerisation Tolerated
  type: string
  inputBinding:
    prefix: --DimerisationThresh
- id: background_check
  doc: Options [NO, Path To Background Fasta File]
  type: string
  inputBinding:
    prefix: --BackgroundCheck
- id: cross_reactivity_thresh
  doc: Max Cross Reactivity Threshold
  type: string
  inputBinding:
    prefix: --CrossReactivityThresh
- id: hard_cross_react_filter
  doc: Hard Cross Reactivity Filter
  type: string
  inputBinding:
    prefix: --HardCrossReactFilter
- id: max_sets
  doc: Default Set To 100
  type: long
  inputBinding:
    prefix: --MaxSets
- id: threads
  doc: Default Set To 1
  type: string
  inputBinding:
    prefix: --Threads
- id: background_search_sensitivity
  doc: Options [Basic or Advanced or Fast]
  type: string
  inputBinding:
    prefix: --BackgroundSearchSensitivity
outputs: []
cwlVersion: v1.1
baseCommand:
- PrimedRPA
