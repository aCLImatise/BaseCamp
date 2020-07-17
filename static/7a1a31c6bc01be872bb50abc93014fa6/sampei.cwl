class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sampei.cwl
inputs:
- id: max_peaks_per_scan
  doc: (default = 20)
  type: long
  inputBinding:
    prefix: --max-peaks-per-scan
- id: fragment_mass_error
  doc: (default = 20)
  type: string
  inputBinding:
    prefix: --fragment-mass-error
- id: matched_query_intensity
  doc: The percentage of MS2 intensity of query scan matched to target scan over the
    summation of total MS2 intensity in the query scan. (default = 0.3)
  type: string
  inputBinding:
    prefix: --matched-query-intensity
- id: error_type
  doc: (default = ppm)
  type: string
  inputBinding:
    prefix: --error-type
- id: output_directory
  doc: Full path to the directory where output is stored. If this directory does not
    exist it will be created. (default = output)
  type: string
  inputBinding:
    prefix: --output-directory
- id: no_filter
  doc: Disable the filter and keep DB identified scans in the target mgf file
  type: boolean
  inputBinding:
    prefix: --no-filter
- id: largest_gap_percent
  doc: The percentage of the largest consecutive b/y ion missing over the length of
    the peptide sequence. (default = 0.4)
  type: string
  inputBinding:
    prefix: --largest-gap-percent
- id: matched_peptide_intensity
  doc: The percentage of MS2 intensity of target scan matched to the theoretical fragments
    of peptide sequence over the summation of total MS2 intensity in the target scan.
    (default = 0.5)
  type: string
  inputBinding:
    prefix: --matched-peptide-intensity
- id: min_diff_dalton_bin
  doc: The absolute minimum dalton difference between the query scan and the target
    scan. (default = 10)
  type: long
  inputBinding:
    prefix: --min-diff-dalton-bin
- id: x_tandem_xml
  doc: The path to an X!tandem xml file which will be used to filter the results.
  type: string
  inputBinding:
    prefix: --xtandem-xml
- id: write_intermediate
  doc: Write files for each step of filtering.
  type: boolean
  inputBinding:
    prefix: --write-intermediate
- id: mgf_query_file
  doc: Query mgf file with full path containing query scans have been identified by
    DB search
  type: string
  inputBinding:
    position: 0
- id: mgf_target_file
  doc: Target mgf file with full path containing target scans with undefined modifications
  type: string
  inputBinding:
    position: 1
- id: id_file
  doc: File in which query scans have been identified by DB search
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sampei
