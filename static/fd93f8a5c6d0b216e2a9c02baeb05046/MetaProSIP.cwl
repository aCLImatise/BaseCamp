class: CommandLineTool
id: MetaProSIP.cwl
inputs:
- id: in_in_mzm_l
  doc: "*                  Centroided MS1 data (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in_mzML
- id: in_in_fast_a
  doc: "*                 Protein sequence database (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -in_fasta
- id: in_out_csv
  doc: "*                  Column separated file with feature fitting result. (valid\
    \ formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out_csv
- id: in_out_peptide_centric_csv
  doc: "*  Column separated file with peptide centric result. (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out_peptide_centric_csv
- id: in_in_feature_xml
  doc: "*            Feature data annotated with identifications (IDMapper) (valid\
    \ formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -in_featureXML
- id: in_r_executable
  doc: "Path to the R executable (default: 'R')"
  type: File?
  inputBinding:
    prefix: -r_executable
- id: in_mz_tolerance_ppm
  doc: "Tolerance in ppm (default: '10.0')"
  type: double?
  inputBinding:
    prefix: -mz_tolerance_ppm
- id: in_rt_tolerance_s
  doc: "Rolerance window around feature rt for XIC extraction (default: '30.0')"
  type: double?
  inputBinding:
    prefix: -rt_tolerance_s
- id: in_intensity_threshold
  doc: "Intensity threshold to collect peaks in the MS1 spectrum. (default: '10.0')"
  type: double?
  inputBinding:
    prefix: -intensity_threshold
- id: in_correlation_threshold
  doc: "Correlation threshold for reporting a RIA (default: '0.7')"
  type: double?
  inputBinding:
    prefix: -correlation_threshold
- id: in_xic_threshold
  doc: "Minimum correlation to mono-isotopic peak for retaining a higher isotopic\
    \ peak. If featureXML from reference file is used it should be disabled (set to\
    \ -1) as no mono-isotopic peak is expected to be present. (default: '0.7')"
  type: File?
  inputBinding:
    prefix: -xic_threshold
- id: in_decomposition_threshold
  doc: "Minimum R-squared of decomposition that must be achieved for a peptide to\
    \ be reported. (default: '0.7')"
  type: double?
  inputBinding:
    prefix: -decomposition_threshold
- id: in_weight_merge_window
  doc: "Decomposition coefficients within +- this rate window will be combined (default:\
    \ '5.0')"
  type: double?
  inputBinding:
    prefix: -weight_merge_window
- id: in_plot_extension
  doc: "Extension used for plots (png|svg|pdf). (default: 'png' valid: 'png', 'svg',\
    \ 'pdf')"
  type: string?
  inputBinding:
    prefix: -plot_extension
- id: in_qc_output_directory
  doc: Output directory for the quality report
  type: Directory?
  inputBinding:
    prefix: -qc_output_directory
- id: in_labeling_element
  doc: "Which element (single letter code) is labeled. (default: 'C' valid: 'C', 'N',\
    \ 'H', 'O')"
  type: string?
  inputBinding:
    prefix: -labeling_element
- id: in_use_unassigned_ids
  doc: Include identifications not assigned to a feature in pattern detection.
  type: boolean?
  inputBinding:
    prefix: -use_unassigned_ids
- id: in_use_averag_in_e_ids
  doc: Use averagine peptides as model to perform pattern detection on unidentified
    peptides.
  type: boolean?
  inputBinding:
    prefix: -use_averagine_ids
- id: in_report_natural_peptides
  doc: Whether purely natural peptides are reported in the quality report.
  type: boolean?
  inputBinding:
    prefix: -report_natural_peptides
- id: in_filter_mono_isotopic
  doc: Try to filter out mono-isotopic patterns to improve detection of low RIA patterns
  type: boolean?
  inputBinding:
    prefix: -filter_monoisotopic
- id: in_cluster
  doc: Perform grouping
  type: boolean?
  inputBinding:
    prefix: -cluster
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_qc_output_directory
  doc: Output directory for the quality report
  type: Directory?
  outputBinding:
    glob: $(inputs.in_qc_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- MetaProSIP
