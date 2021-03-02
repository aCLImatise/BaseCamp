class: CommandLineTool
id: peptide_prophet.rb.cwl
inputs:
- id: in_output_prefix
  doc: A string to prepend to the name of output files
  type: string?
  inputBinding:
    prefix: --output-prefix
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
- id: in_glyco
  doc: Expect N-Glycosylation modifications as variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean?
  inputBinding:
    prefix: --glyco
- id: in_maldi
  doc: Run a search on MALDI data [false]
  type: boolean?
  inputBinding:
    prefix: --maldi
- id: in_p_thresh
  doc: Probability threshold below which PSMs are discarded [0.05]
  type: double?
  inputBinding:
    prefix: --p-thresh
- id: in_use_i_cat
  doc: Use icat information [false]
  type: boolean?
  inputBinding:
    prefix: --useicat
- id: in_phospho
  doc: Use phospho information [false]
  type: boolean?
  inputBinding:
    prefix: --phospho
- id: in_use_pi
  doc: Use pI information [false]
  type: boolean?
  inputBinding:
    prefix: --usepi
- id: in_user_t
  doc: Use hydrophobicity / RT information [false]
  type: boolean?
  inputBinding:
    prefix: --usert
- id: in_accurate_mass
  doc: Use accurate mass binning [false]
  type: boolean?
  inputBinding:
    prefix: --accurate-mass
- id: in_no_ntt
  doc: Don't use NTT model [false]
  type: boolean?
  inputBinding:
    prefix: --no-ntt
- id: in_no_nmc
  doc: Don't use NMC model [false]
  type: boolean?
  inputBinding:
    prefix: --no-nmc
- id: in_use_gamma
  doc: Use Gamma distribution to model the negatives [false]
  type: boolean?
  inputBinding:
    prefix: --usegamma
- id: in_use_only_expect
  doc: Only use Expect Score as the discriminant [false]
  type: boolean?
  inputBinding:
    prefix: --use-only-expect
- id: in_force_fit
  doc: Force fitting of mixture model and bypass checks [false]
  type: boolean?
  inputBinding:
    prefix: --force-fit
- id: in_allow_alt_instruments
  doc: Warning instead of exit with error if instrument types between runs is different
    [false]
  type: boolean?
  inputBinding:
    prefix: --allow-alt-instruments
- id: in_one_at_a_time
  doc: Create a separate pproph output file for each analysis [false]
  type: File?
  inputBinding:
    prefix: --one-ata-time
- id: in_decoy_prefix
  doc: Prefix for decoy sequences [decoy]
  type: string?
  inputBinding:
    prefix: --decoy-prefix
- id: in_use_non_parametric_model
  doc: Use Non-parametric model, can only be used with decoy option [false]
  type: boolean?
  inputBinding:
    prefix: --use-non-parametric-model
- id: in_no_decoy
  doc: Don't use decoy sequences to pin down the negative distribution [false]
  type: boolean?
  inputBinding:
    prefix: --no-decoy
- id: in_experiment_label
  doc: used to commonly label all spectra belonging to one experiment (required by
    iProphet)
  type: string?
  inputBinding:
    prefix: --experiment-label
- id: in_file_two_dot_pep_dot_xml
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
- id: out_one_at_a_time
  doc: Create a separate pproph output file for each analysis [false]
  type: File?
  outputBinding:
    glob: $(inputs.in_one_at_a_time)
hints: []
cwlVersion: v1.1
baseCommand:
- peptide_prophet.rb
