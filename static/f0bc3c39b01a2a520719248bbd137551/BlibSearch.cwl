class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BlibSearch.cwl
inputs:
- id: arg_remove_peaks
  doc: '[ --clear-precursor ] arg (=1)  Remove the peaks in a X m/z window around  the
    precursor from the query and library  spectrum.'
  type: boolean
  inputBinding:
    prefix: -c
- id: top_peaks_for_search
  doc: (=100)     Use ARG of the highest intensity peaks.
  type: string
  inputBinding:
    prefix: --topPeaksForSearch
- id: arg_compare_query
  doc: '[ --mz-window ] arg (=3)        Compare query to library spectra with  precursor
    m/z +/- ARG.'
  type: boolean
  inputBinding:
    prefix: -w
- id: n
  doc: '[ --min-peaks ] arg (=20)       Search only spectra with charge no less  than
    ARG.'
  type: boolean
  inputBinding:
    prefix: -n
- id: l
  doc: '[ --low-charge ] arg (=1)       Search only spectra with charge no less  than
    ARG.'
  type: boolean
  inputBinding:
    prefix: -L
- id: arg_search_only_spectra_charge_higher
  doc: '[ --high-charge ] arg (=5)      Search only spectra with charge no higher  than
    ARG.'
  type: boolean
  inputBinding:
    prefix: -H
- id: arg_return_arg
  doc: '[ --report-matches ] arg (=5)   Return ARG of the best matches for each  query.  Use
    -1 to report all.'
  type: boolean
  inputBinding:
    prefix: -m
- id: psm_result_file
  doc: Return results in a .psm file named ARG.
  type: string
  inputBinding:
    prefix: --psm-result-file
- id: arg_return_results
  doc: '[ --report-file ] arg           Return results in report file named ARG.   Default
    is <spectrum file name>.report.'
  type: boolean
  inputBinding:
    prefix: -R
- id: preserve_order
  doc: Search spectra in the order they appear in the file.  Default to search as
    sorted by  precursor m/z.
  type: boolean
  inputBinding:
    prefix: --preserve-order
- id: arg_file_containing
  doc: '[ --parameter-file ] arg        File containing search parameters.   Command
    line values override file values.'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_status_control
  doc: '[ --verbosity ] arg (=status)   Control the level of output to stderr.  (silent,
    error, status, warn, debug,  detail, all)  Default status.'
  type: boolean
  inputBinding:
    prefix: -v
- id: spectrum_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: library
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibSearch
