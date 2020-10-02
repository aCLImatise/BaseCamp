class: CommandLineTool
id: PrimedLAMP_Cross_Reactivity_Update.cwl
inputs:
- id: in_run_id
  doc: Desired Run ID
  type: string
  inputBinding:
    prefix: --RunID
- id: in_prior_oligo_sites
  doc: Path to Prior Generated Oligo Sites
  type: File
  inputBinding:
    prefix: --PriorOligoSites
- id: in_path_blastnoutput_directory
  doc: Path to Blastn_Output directory
  type: File
  inputBinding:
    prefix: --PriorBlastnOutput
- id: in_path_file_excluded
  doc: Path to .txt file contain sequence IDs to excluded
  type: File
  inputBinding:
    prefix: --ExlusionIDFilePath
- id: in_threads
  doc: Default Set To 1
  type: long
  inputBinding:
    prefix: --Threads
- id: in__exlusionidfilepath
  doc: --ExlusionIDFilePath
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: '[--Threads THREADS]'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PrimedLAMP_Cross_Reactivity_Update
