class: CommandLineTool
id: BlibSearch.cwl
inputs:
- id: in_arg_remove_peaks
  doc: "[ --clear-precursor ] arg (=1)  Remove the peaks in a X m/z window around\n\
    the precursor from the query and library\nspectrum."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_top_peaks_for_search
  doc: (=100)     Use ARG of the highest intensity peaks.
  type: long?
  inputBinding:
    prefix: --topPeaksForSearch
- id: in_arg_compare_query
  doc: "[ --mz-window ] arg (=3)        Compare query to library spectra with\nprecursor\
    \ m/z +/- ARG."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_n
  doc: "[ --min-peaks ] arg (=20)       Search only spectra with charge no less\n\
    than ARG."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_l
  doc: "[ --low-charge ] arg (=1)       Search only spectra with charge no less\n\
    than ARG."
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_arg_search_only_spectra_higherthan
  doc: "[ --high-charge ] arg (=5)      Search only spectra with charge no higher\n\
    than ARG."
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_arg_return_arg
  doc: '[ --report-matches ] arg (=5)   Return ARG of the best matches for each'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_psm_result_file
  doc: Return results in a .psm file named ARG.
  type: File?
  inputBinding:
    prefix: --psm-result-file
- id: in_arg_return_results
  doc: "[ --report-file ] arg           Return results in report file named ARG.\n\
    Default is <spectrum file name>.report."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_preserve_order
  doc: "Search spectra in the order they appear in\nthe file.  Default to search as\
    \ sorted by\nprecursor m/z."
  type: boolean?
  inputBinding:
    prefix: --preserve-order
- id: in_arg_file_containing
  doc: "[ --parameter-file ] arg        File containing search parameters.\nCommand\
    \ line values override file values."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_status_control
  doc: "[ --verbosity ] arg (=status)   Control the level of output to stderr.\n(silent,\
    \ error, status, warn, debug,\ndetail, all)  Default status."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_query_dot
  doc: Use -1 to report all.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- BlibSearch
