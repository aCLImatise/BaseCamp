class: CommandLineTool
id: tandem_search.rb.cwl
inputs:
- id: in_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File?
  inputBinding:
    prefix: --replace-output
- id: in_output
  doc: An explicitly named output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: Number of processing threads to use. Set to 0 to autodetect an appropriate
    value [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_database
  doc: Specify the database to use for this search. Can be a named protk database
    or the path to a fasta file [sphuman]
  type: File?
  inputBinding:
    prefix: --database
- id: in_enzyme
  doc: Enzyme [Trypsin]
  type: string?
  inputBinding:
    prefix: --enzyme
- id: in_var_mods
  doc: Variable modifications. These should be provided in a comma separated list
  type: string?
  inputBinding:
    prefix: --var-mods
- id: in_fix_mods
  doc: Fixed modifications. These should be provided in a comma separated list
  type: string?
  inputBinding:
    prefix: --fix-mods
- id: in_fragment_ion_to_l_units
  doc: Fragment ion mass tolerance units (Da or mmu). [Da]
  type: string?
  inputBinding:
    prefix: --fragment-ion-tol-units
- id: in_precursor_ion_to_l_units
  doc: Precursor ion mass tolerance units (ppm or Da). [ppm]
  type: string?
  inputBinding:
    prefix: --precursor-ion-tol-units
- id: in_fragment_ion_to_l
  doc: Fragment ion mass tolerance (unit dependent). [0.65]
  type: double?
  inputBinding:
    prefix: --fragment-ion-tol
- id: in_precursor_ion_to_l
  doc: Precursor ion mass tolerance. [200]
  type: long?
  inputBinding:
    prefix: --precursor-ion-tol
- id: in_num_missed_cleavages
  doc: Number of missed cleavages allowed [2]
  type: long?
  inputBinding:
    prefix: --num-missed-cleavages
- id: in_cleavage_semi
  doc: Search for peptides with up to 1 non-enzymatic cleavage site [false]
  type: boolean?
  inputBinding:
    prefix: --cleavage-semi
- id: in_multi_isotope_search
  doc: Expand parent mass window to include windows around neighbouring isotopic peaks
    [false]
  type: boolean?
  inputBinding:
    prefix: --multi-isotope-search
- id: in_glyco
  doc: Expect N-Glycosylation modifications as variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean?
  inputBinding:
    prefix: --glyco
- id: in_acetyl_n_term
  doc: Expect N-terminal acetylation as a variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean?
  inputBinding:
    prefix: --acetyl-nterm
- id: in_methionine_o
  doc: Expect Oxidised Methionine modifications as variable mod in a search [false]
  type: boolean?
  inputBinding:
    prefix: --methionineo
- id: in_tandem_params
  doc: Either the full path to an xml file containing a complete set of default parameters,
    or one of the following (isb_native,isb_kscore,gpm). Default is isb_native [isb_native]
  type: File?
  inputBinding:
    prefix: --tandem-params
- id: in_keep_params_files
  doc: Keep X!Tandem parameter files [false]
  type: boolean?
  inputBinding:
    prefix: --keep-params-files
- id: in_output_spectra
  doc: Include spectra in the output file [false]
  type: File?
  inputBinding:
    prefix: --output-spectra
- id: in_file_two_dot_mzm_l
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File?
  outputBinding:
    glob: $(inputs.in_replace_output)
- id: out_output
  doc: An explicitly named output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_spectra
  doc: Include spectra in the output file [false]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_spectra)
hints: []
cwlVersion: v1.1
baseCommand:
- tandem_search.rb
