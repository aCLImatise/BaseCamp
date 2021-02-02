class: CommandLineTool
id: omssa_search.rb.cwl
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
- id: in_respect_charges
  doc: Dont respect charges in the input file. Instead impute them by trying various
    options [false]
  type: boolean
  inputBinding:
    prefix: --respect-charges
- id: in_searched_ions
  doc: Ion series to search
  type: string
  inputBinding:
    prefix: --searched-ions
- id: in_num_peaks_for_multi_isotope_search
  doc: Number of peaks to include in multi-isotope search [0]
  type: long
  inputBinding:
    prefix: --num-peaks-for-multi-isotope-search
- id: in_glyco
  doc: Expect N-Glycosylation modifications as variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean
  inputBinding:
    prefix: --glyco
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
- id: in_no_add_retention_times
  doc: Don't post process the output to add retention times [true]
  type: boolean
  inputBinding:
    prefix: --no-add-retention-times
- id: in_max_hit_expect
  doc: Expect values less than this are considered to be hits [1]
  type: long
  inputBinding:
    prefix: --max-hit-expect
- id: in_intensity_cut_off
  doc: Peak intensity cut-off as a fraction of maximum peak intensity [0.0005]
  type: double
  inputBinding:
    prefix: --intensity-cut-off
- id: in_galaxy_index_dir
  doc: Specify galaxy index directory, will search for mods file there.
  type: File
  inputBinding:
    prefix: --galaxy-index-dir
- id: in_omx_output
  doc: Specify path for additional OMX output (optional).
  type: File
  inputBinding:
    prefix: --omx-output
- id: in_log_file
  doc: Send OMSSA stdout to a logfile
  type: File
  inputBinding:
    prefix: --logfile
- id: in_file_two_do_tmgf
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
- id: out_omx_output
  doc: Specify path for additional OMX output (optional).
  type: File
  outputBinding:
    glob: $(inputs.in_omx_output)
cwlVersion: v1.1
baseCommand:
- omssa_search.rb
