class: CommandLineTool
id: PrimedLAMP_Custom.cwl
inputs:
- id: in_run_id
  doc: Desired Run ID
  type: string?
  inputBinding:
    prefix: --RunID
- id: in_input_file
  doc: Path to Custom Sets Input File (CSV)
  type: File?
  inputBinding:
    prefix: --InputFile
- id: in_input_fast_a
  doc: Path to target sequence in fasta format
  type: File?
  inputBinding:
    prefix: --InputFasta
- id: in_prior_align
  doc: Path to Alignment Summary CSV File
  type: File?
  inputBinding:
    prefix: --PriorAlign
- id: in_background_check
  doc: "Path to cross-reactivity fasta file. If no cross\nreactivity check is required\
    \ please set as: NO"
  type: File?
  inputBinding:
    prefix: --BackgroundCheck
- id: in_blast_db_path
  doc: Path to BlastnDB for cross reactivity check.
  type: File?
  inputBinding:
    prefix: --BlastDBPath
- id: in_background_search_sensitivity
  doc: Options [Basic or Advanced or Fast]
  type: string?
  inputBinding:
    prefix: --BackgroundSearchSensitivity
- id: in_evalue_thresh
  doc: Cross Reactivity search sensntivity.
  type: string?
  inputBinding:
    prefix: --EvalueThresh
- id: in_threads
  doc: Default set to 1
  type: long?
  inputBinding:
    prefix: --Threads
- id: in_t_spacer_len
  doc: Length of T Spacer in FIP and BIP if required
  type: long?
  inputBinding:
    prefix: --TspacerLen
- id: in_inclusivity_check
  doc: "Inclusivity and binding site assessment\n"
  type: string?
  inputBinding:
    prefix: --InclusivityCheck
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PrimedLAMP_Custom
