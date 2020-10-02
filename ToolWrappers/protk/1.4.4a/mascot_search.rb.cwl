class: CommandLineTool
id: mascot_search.rb.cwl
inputs:
- id: in_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  inputBinding:
    prefix: --replace-output
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_database
  doc: Specify the database to use for this search. Can be a named protk database
    or the path to a fasta file [sphuman]
  type: File
  inputBinding:
    prefix: --database
- id: in_enzyme
  doc: Enzyme [Trypsin]
  type: string
  inputBinding:
    prefix: --enzyme
- id: in_var_mods
  doc: Variable modifications. These should be provided in a comma separated list
  type: string
  inputBinding:
    prefix: --var-mods
- id: in_fix_mods
  doc: Fixed modifications. These should be provided in a comma separated list
  type: string
  inputBinding:
    prefix: --fix-mods
- id: in_instrument
  doc: Instrument [ESI-QUAD-TOF]
  type: string
  inputBinding:
    prefix: --instrument
- id: in_fragment_ion_to_l_units
  doc: Fragment ion mass tolerance units (Da or mmu). [Da]
  type: string
  inputBinding:
    prefix: --fragment-ion-tol-units
- id: in_precursor_ion_to_l_units
  doc: Precursor ion mass tolerance units (ppm or Da). [ppm]
  type: string
  inputBinding:
    prefix: --precursor-ion-tol-units
- id: in_fragment_ion_to_l
  doc: Fragment ion mass tolerance (unit dependent). [0.65]
  type: double
  inputBinding:
    prefix: --fragment-ion-tol
- id: in_precursor_ion_to_l
  doc: Precursor ion mass tolerance. [200]
  type: long
  inputBinding:
    prefix: --precursor-ion-tol
- id: in_search_type
  doc: Use monoisotopic or average precursor masses. (monoisotopic or average) [monoisotopic]
  type: string
  inputBinding:
    prefix: --search-type
- id: in_num_missed_cleavages
  doc: Number of missed cleavages allowed [2]
  type: long
  inputBinding:
    prefix: --num-missed-cleavages
- id: in_glyco
  doc: Expect N-Glycosylation modifications as variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean
  inputBinding:
    prefix: --glyco
- id: in_acetyl_n_term
  doc: Expect N-terminal acetylation as a variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean
  inputBinding:
    prefix: --acetyl-nterm
- id: in_methionine_o
  doc: Expect Oxidised Methionine modifications as variable mod in a search [false]
  type: boolean
  inputBinding:
    prefix: --methionineo
- id: in_carb_amido_methyl
  doc: Expect Carbamidomethyl C modifications as fixed mod in a search [false]
  type: boolean
  inputBinding:
    prefix: --carbamidomethyl
- id: in_server
  doc: The url to the cgi directory of the mascot server [www.matrixscience.com/mascot/cgi]
  type: Directory
  inputBinding:
    prefix: --server
- id: in_allowed_charges
  doc: Allowed precursor ion charges. [1+,2+,3+]
  type: long
  inputBinding:
    prefix: --allowed-charges
- id: in_quantitation
  doc: Mascot quant method
  type: string
  inputBinding:
    prefix: --quantitation
- id: in_email
  doc: User email.
  type: string
  inputBinding:
    prefix: --email
- id: in_username
  doc: Username.
  type: string
  inputBinding:
    prefix: --username
- id: in_proxy
  doc: The url to a proxy server
  type: string
  inputBinding:
    prefix: --proxy
- id: in_password
  doc: Password to use when Mascot security is enabled
  type: string
  inputBinding:
    prefix: --password
- id: in_use_security
  doc: When Mascot security is enabled this is required [false]
  type: boolean
  inputBinding:
    prefix: --use-security
- id: in_download_only
  doc: Specify a relative path to an existing results file on the server for download
    eg(20131113/F227185.dat)
  type: File
  inputBinding:
    prefix: --download-only
- id: in_timeout
  doc: Timeout for sending data file to mascot in seconds [200]
  type: File
  inputBinding:
    prefix: --timeout
- id: in_msms_file_do_tmgf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  outputBinding:
    glob: $(inputs.in_replace_output)
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- mascot_search.rb
