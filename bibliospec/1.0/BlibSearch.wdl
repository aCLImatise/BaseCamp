version 1.0

task BlibSearch {
  input {
    Boolean? arg_remove_peaks
    String? top_peaks_for_search
    Boolean? arg_compare_query
    Boolean? n
    Boolean? l
    Boolean? arg_search_only_spectra_charge_higher
    Boolean? arg_return_arg
    String? psm_result_file
    Boolean? arg_return_results
    Boolean? preserve_order
    Boolean? arg_file_containing
    Boolean? arg_status_control
    String spectrum_file
    String library
  }
  command <<<
    BlibSearch \
      ~{spectrum_file} \
      ~{library} \
      ~{true="-c" false="" arg_remove_peaks} \
      ~{if defined(top_peaks_for_search) then ("--topPeaksForSearch " +  '"' + top_peaks_for_search + '"') else ""} \
      ~{true="-w" false="" arg_compare_query} \
      ~{true="-n" false="" n} \
      ~{true="-L" false="" l} \
      ~{true="-H" false="" arg_search_only_spectra_charge_higher} \
      ~{true="-m" false="" arg_return_arg} \
      ~{if defined(psm_result_file) then ("--psm-result-file " +  '"' + psm_result_file + '"') else ""} \
      ~{true="-R" false="" arg_return_results} \
      ~{true="--preserve-order" false="" preserve_order} \
      ~{true="-p" false="" arg_file_containing} \
      ~{true="-v" false="" arg_status_control}
  >>>
  parameter_meta {
    arg_remove_peaks: "[ --clear-precursor ] arg (=1)  Remove the peaks in a X m/z window around  the precursor from the query and library  spectrum."
    top_peaks_for_search: "(=100)     Use ARG of the highest intensity peaks."
    arg_compare_query: "[ --mz-window ] arg (=3)        Compare query to library spectra with  precursor m/z +/- ARG."
    n: "[ --min-peaks ] arg (=20)       Search only spectra with charge no less  than ARG."
    l: "[ --low-charge ] arg (=1)       Search only spectra with charge no less  than ARG."
    arg_search_only_spectra_charge_higher: "[ --high-charge ] arg (=5)      Search only spectra with charge no higher  than ARG."
    arg_return_arg: "[ --report-matches ] arg (=5)   Return ARG of the best matches for each  query.  Use -1 to report all."
    psm_result_file: "Return results in a .psm file named ARG."
    arg_return_results: "[ --report-file ] arg           Return results in report file named ARG.   Default is <spectrum file name>.report."
    preserve_order: "Search spectra in the order they appear in the file.  Default to search as sorted by  precursor m/z."
    arg_file_containing: "[ --parameter-file ] arg        File containing search parameters.   Command line values override file values."
    arg_status_control: "[ --verbosity ] arg (=status)   Control the level of output to stderr.  (silent, error, status, warn, debug,  detail, all)  Default status."
    spectrum_file: ""
    library: ""
  }
}