class: CommandLineTool
id: sampei.cwl
inputs:
- id: in_matched_query_intensity
  doc: "The percentage of MS2 intensity of query scan matched\nto target scan over\
    \ the summation of total MS2\nintensity in the query scan. (default = 0.3)"
  type: double?
  inputBinding:
    prefix: --matched-query-intensity
- id: in_error_type
  doc: (default = ppm)
  type: string?
  inputBinding:
    prefix: --error-type
- id: in_output_directory
  doc: "Full path to the directory where output is stored. If\nthis directory does\
    \ not exist it will be created.\n(default = output)"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_no_filter
  doc: "Disable the filter and keep DB identified scans in the\ntarget mgf file"
  type: boolean?
  inputBinding:
    prefix: --no-filter
- id: in_largest_gap_percent
  doc: "The percentage of the largest consecutive b/y ion\nmissing over the length\
    \ of the peptide sequence.\n(default = 0.4)"
  type: long?
  inputBinding:
    prefix: --largest-gap-percent
- id: in_matched_peptide_intensity
  doc: "The percentage of MS2 intensity of target scan matched\nto the theoretical\
    \ fragments of peptide sequence over\nthe summation of total MS2 intensity in\
    \ the target\nscan. (default = 0.5)"
  type: double?
  inputBinding:
    prefix: --matched-peptide-intensity
- id: in_min_diff_dalton_bin
  doc: "The absolute minimum dalton difference between the\nquery scan and the target\
    \ scan. (default = 10)"
  type: long?
  inputBinding:
    prefix: --min-diff-dalton-bin
- id: in_x_tandem_xml
  doc: "The path to an X!tandem xml file which will be used to\nfilter the results."
  type: File?
  inputBinding:
    prefix: --xtandem-xml
- id: in_write_intermediate
  doc: Write files for each step of filtering.
  type: boolean?
  inputBinding:
    prefix: --write-intermediate
- id: in_max_peaks_per_scan
  doc: ''
  type: long?
  inputBinding:
    prefix: --max-peaks-per-scan
- id: in_mgf_query_file
  doc: "Query mgf file with full path containing query scans\nhave been identified\
    \ by DB search"
  type: string
  inputBinding:
    position: 0
- id: in_mgf_target_file
  doc: "Target mgf file with full path containing target scans\nwith undefined modifications"
  type: string
  inputBinding:
    position: 1
- id: in_id_file
  doc: File in which query scans have been identified by DB
  type: string
  inputBinding:
    position: 2
- id: in_search
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Full path to the directory where output is stored. If\nthis directory does\
    \ not exist it will be created.\n(default = output)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sampei:0.0.9--py_0
cwlVersion: v1.1
baseCommand:
- sampei
