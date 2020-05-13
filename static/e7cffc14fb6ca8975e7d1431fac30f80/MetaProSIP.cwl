class: CommandLineTool
id: MetaProSIP.cwl
inputs:
- id: in_mzm_l
  doc: "*                  Centroided MS1 data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in_mzML
- id: in_fast_a
  doc: "*                 Protein sequence database (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in_fasta
- id: out_csv
  doc: "*                  Column separated file with feature fitting result. (valid\
    \ formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_csv
- id: out_peptide_centric_csv
  doc: "*  Column separated file with peptide centric result. (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_peptide_centric_csv
- id: in_feature_xml
  doc: "*            Feature data annotated with identifications (IDMapper) (valid\
    \ formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in_featureXML
- id: r_executable
  doc: "Path to the R executable (default: 'R')"
  type: File
  inputBinding:
    prefix: -r_executable
- id: mz_tolerance_ppm
  doc: "Tolerance in ppm (default: '10.0')"
  type: string
  inputBinding:
    prefix: -mz_tolerance_ppm
- id: rt_tolerance_s
  doc: "Rolerance window around feature rt for XIC extraction (default: '30.0')"
  type: string
  inputBinding:
    prefix: -rt_tolerance_s
- id: intensity_threshold
  doc: "Intensity threshold to collect peaks in the MS1 spectrum. (default: '10.0')"
  type: string
  inputBinding:
    prefix: -intensity_threshold
- id: correlation_threshold
  doc: "Correlation threshold for reporting a RIA (default: '0.7')"
  type: string
  inputBinding:
    prefix: -correlation_threshold
- id: xic_threshold
  doc: "Minimum correlation to mono-isotopic peak for retaining a higher isotopic\
    \ peak. If featureXML from reference file is used it should be disabled (set to\
    \ -1) as no mono-isotopi c peak is expected to be present. (default: '0.7')"
  type: string
  inputBinding:
    prefix: -xic_threshold
- id: decomposition_threshold
  doc: "Minimum R-squared of decomposition that must be achieved for a peptide to\
    \ be reported. (default: '0.7')"
  type: string
  inputBinding:
    prefix: -decomposition_threshold
- id: weight_merge_window
  doc: "Decomposition coefficients within +- this rate window will be combined (default:\
    \ '5.0')"
  type: string
  inputBinding:
    prefix: -weight_merge_window
- id: plot_extension
  doc: "Extension used for plots (png|svg|pdf). (default: 'png' valid: 'png', 'svg',\
    \ 'pdf')"
  type: string
  inputBinding:
    prefix: -plot_extension
- id: qc_output_directory
  doc: Output directory for the quality report
  type: Directory
  inputBinding:
    prefix: -qc_output_directory
- id: labeling_element
  doc: "Which element (single letter code) is labeled. (default: 'C' valid: 'C', 'N',\
    \ 'H', 'O')"
  type: string
  inputBinding:
    prefix: -labeling_element
- id: use_unassigned_ids
  doc: Include identifications not assigned to a feature in pattern detection.
  type: boolean
  inputBinding:
    prefix: -use_unassigned_ids
- id: use_averag_in_e_ids
  doc: Use averagine peptides as model to perform pattern detection on unidentified
    peptides.
  type: boolean
  inputBinding:
    prefix: -use_averagine_ids
- id: report_natural_peptides
  doc: Whether purely natural peptides are reported in the quality report.
  type: boolean
  inputBinding:
    prefix: -report_natural_peptides
- id: filter_mono_isotopic
  doc: Try to filter out mono-isotopic patterns to improve detection of low RIA patterns
  type: boolean
  inputBinding:
    prefix: -filter_monoisotopic
- id: cluster
  doc: Perform grouping
  type: boolean
  inputBinding:
    prefix: -cluster
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- MetaProSIP
