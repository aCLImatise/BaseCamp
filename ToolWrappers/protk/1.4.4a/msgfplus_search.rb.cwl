class: CommandLineTool
id: msgfplus_search.rb.cwl
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
- id: in_threads
  doc: Number of processing threads to use. Set to 0 to autodetect an appropriate
    value [1]
  type: long
  inputBinding:
    prefix: --threads
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
- id: in_cleavage_semi
  doc: Search for peptides with up to 1 non-enzymatic cleavage site [false]
  type: boolean
  inputBinding:
    prefix: --cleavage-semi
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
- id: in_precursor_ion_to_l
  doc: Precursor ion mass tolerance. [20]
  type: long
  inputBinding:
    prefix: --precursor-ion-tol
- id: in_precursor_ion_to_l_units
  doc: Precursor ion mass tolerance units (ppm or Da). [ppm]
  type: string
  inputBinding:
    prefix: --precursor-ion-tol-units
- id: in_pep_xml
  doc: Convert results to pepxml. [false]
  type: boolean
  inputBinding:
    prefix: --pepxml
- id: in_isotope_error_range
  doc: Takes into account of the error introduced by chooosing a non-monoisotopic
    peak for fragmentation. [0,1]
  type: long
  inputBinding:
    prefix: --isotope-error-range
- id: in_fragment_method
  doc: 'Fragment method 0: As written in the spectrum or CID if no info (Default),
    1: CID, 2: ETD, 3: HCD, 4: Merge spectra from the same precursor [0]'
  type: long
  inputBinding:
    prefix: --fragment-method
- id: in_decoy_search
  doc: Build and search a decoy database on the fly. Input db should not contain decoys
    if this option is used [false]
  type: boolean
  inputBinding:
    prefix: --decoy-search
- id: in_min_pep_length
  doc: Minimum peptide length to consider [6]
  type: long
  inputBinding:
    prefix: --min-pep-length
- id: in_max_pep_length
  doc: Maximum peptide length to consider [40]
  type: long
  inputBinding:
    prefix: --max-pep-length
- id: in_min_pep_charge
  doc: Minimum precursor charge to consider if charges are not specified in the spectrum
    file [2]
  type: long
  inputBinding:
    prefix: --min-pep-charge
- id: in_max_pep_charge
  doc: Maximum precursor charge to consider if charges are not specified in the spectrum
    file [3]
  type: long
  inputBinding:
    prefix: --max-pep-charge
- id: in_num_reported_matches
  doc: 'Number of matches per spectrum to be reported, Default: 1 [1]'
  type: long
  inputBinding:
    prefix: --num-reported-matches
- id: in_add_features
  doc: output additional features [false]
  type: boolean
  inputBinding:
    prefix: --add-features
- id: in_java_mem
  doc: Java memory limit when running the search (Default 3.5Gb) [3500M]
  type: double
  inputBinding:
    prefix: --java-mem
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
- msgfplus_search.rb
