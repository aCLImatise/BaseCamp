#!/usr/bin/env cwl-runner

baseCommand:
- MetaProSIP
class: CommandLineTool
cwlVersion: v1.0
id: metaprosip
inputs:
- doc: "*                  Centroided MS1 data (valid formats: 'mzML')"
  id: in_mzm_l
  inputBinding:
    prefix: -in_mzML
  type: File
- doc: "*                 Protein sequence database (valid formats: 'fasta')"
  id: in_fast_a
  inputBinding:
    prefix: -in_fasta
  type: File
- doc: "*                  Column separated file with feature fitting result. (valid\
    \ formats: 'csv')"
  id: out_csv
  inputBinding:
    prefix: -out_csv
  type: File
- doc: "*  Column separated file with peptide centric result. (valid formats: 'csv')"
  id: out_peptide_centric_csv
  inputBinding:
    prefix: -out_peptide_centric_csv
  type: File
- doc: "*            Feature data annotated with identifications (IDMapper) (valid\
    \ formats: 'featureXML')"
  id: in_feature_xml
  inputBinding:
    prefix: -in_featureXML
  type: File
- doc: "Path to the R executable (default: 'R')"
  id: r_executable
  inputBinding:
    prefix: -r_executable
  type: File
- doc: "Tolerance in ppm (default: '10.0')"
  id: mz_tolerance_ppm
  inputBinding:
    prefix: -mz_tolerance_ppm
  type: string
- doc: "Rolerance window around feature rt for XIC extraction (default: '30.0')"
  id: rt_tolerance_s
  inputBinding:
    prefix: -rt_tolerance_s
  type: string
- doc: "Intensity threshold to collect peaks in the MS1 spectrum. (default: '10.0')"
  id: intensity_threshold
  inputBinding:
    prefix: -intensity_threshold
  type: string
- doc: "Correlation threshold for reporting a RIA (default: '0.7')"
  id: correlation_threshold
  inputBinding:
    prefix: -correlation_threshold
  type: string
- doc: "Minimum correlation to mono-isotopic peak for retaining a higher isotopic\
    \ peak. If featureXML from reference file is used it should be disabled (set to\
    \ -1) as no mono-isotopi c peak is expected to be present. (default: '0.7')"
  id: xic_threshold
  inputBinding:
    prefix: -xic_threshold
  type: string
- doc: "Minimum R-squared of decomposition that must be achieved for a peptide to\
    \ be reported. (default: '0.7')"
  id: decomposition_threshold
  inputBinding:
    prefix: -decomposition_threshold
  type: string
- doc: "Decomposition coefficients within +- this rate window will be combined (default:\
    \ '5.0')"
  id: weight_merge_window
  inputBinding:
    prefix: -weight_merge_window
  type: string
- doc: "Extension used for plots (png|svg|pdf). (default: 'png' valid: 'png', 'svg',\
    \ 'pdf')"
  id: plot_extension
  inputBinding:
    prefix: -plot_extension
  type: string
- doc: Output directory for the quality report
  id: qc_output_directory
  inputBinding:
    prefix: -qc_output_directory
  type: Directory
- doc: "Which element (single letter code) is labeled. (default: 'C' valid: 'C', 'N',\
    \ 'H', 'O')"
  id: labeling_element
  inputBinding:
    prefix: -labeling_element
  type: string
- doc: Include identifications not assigned to a feature in pattern detection.
  id: use_unassigned_ids
  inputBinding:
    prefix: -use_unassigned_ids
  type: boolean
- doc: Use averagine peptides as model to perform pattern detection on unidentified
    peptides.
  id: use_averag_in_e_ids
  inputBinding:
    prefix: -use_averagine_ids
  type: boolean
- doc: Whether purely natural peptides are reported in the quality report.
  id: report_natural_peptides
  inputBinding:
    prefix: -report_natural_peptides
  type: boolean
- doc: Try to filter out mono-isotopic patterns to improve detection of low RIA patterns
  id: filter_mono_isotopic
  inputBinding:
    prefix: -filter_monoisotopic
  type: boolean
- doc: Perform grouping
  id: cluster
  inputBinding:
    prefix: -cluster
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
