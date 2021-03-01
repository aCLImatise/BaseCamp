class: CommandLineTool
id: PrimedLAMP_Tm_Update.cwl
inputs:
- id: in_run_id
  doc: Desired Run ID
  type: string?
  inputBinding:
    prefix: --RunID
- id: in_path_prior_generated
  doc: Path to Prior Generated Oligo Sites
  type: File?
  inputBinding:
    prefix: --PriorOligoSites
- id: in_monovalent_salt_conc
  doc: Millimolar Concentration (10^-3)
  type: long?
  inputBinding:
    prefix: --MonovalentSaltConc
- id: in_divalent_salt_conc
  doc: Millimolar Concentration (10^-3)
  type: long?
  inputBinding:
    prefix: --DivalentSaltConc
- id: in_dntp_conc
  doc: Millimolar Concentration (10^-3)
  type: long?
  inputBinding:
    prefix: --dNTPConc
- id: in_oligo_conc
  doc: Micromolar Concentration (10^-6)
  type: long?
  inputBinding:
    prefix: --OligoConc
- id: in_oligo_conc_pair
  doc: Leave as Default
  type: string?
  inputBinding:
    prefix: --OligoConcPair
- id: in_threads
  doc: Default Set To 1
  type: long?
  inputBinding:
    prefix: --Threads
- id: in_var_8
  doc: '[--MonovalentSaltConc MONOVALENTSALTCONC]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PrimedLAMP_Tm_Update
