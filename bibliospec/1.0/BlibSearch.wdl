version 1.0

task BlibSearch {
  input {
    Boolean? arg_remove_peaks
    Int? top_peaks_for_search
    Boolean? arg_compare_query
    Boolean? n
    Boolean? l
    Boolean? arg_search_only_spectra_charge_higherthan
    Boolean? arg_return_arg
    File? psm_result_file
    Boolean? arg_return_results
    Boolean? preserve_order
    Boolean? arg_file_containing
    Boolean? arg_status_control
    String query_dot
  }
  command <<<
    BlibSearch \
      ~{query_dot} \
      ~{if (arg_remove_peaks) then "-c" else ""} \
      ~{if defined(top_peaks_for_search) then ("--topPeaksForSearch " +  '"' + top_peaks_for_search + '"') else ""} \
      ~{if (arg_compare_query) then "-w" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (l) then "-L" else ""} \
      ~{if (arg_search_only_spectra_charge_higherthan) then "-H" else ""} \
      ~{if (arg_return_arg) then "-m" else ""} \
      ~{if defined(psm_result_file) then ("--psm-result-file " +  '"' + psm_result_file + '"') else ""} \
      ~{if (arg_return_results) then "-R" else ""} \
      ~{if (preserve_order) then "--preserve-order" else ""} \
      ~{if (arg_file_containing) then "-p" else ""} \
      ~{if (arg_status_control) then "-v" else ""}
  >>>
  parameter_meta {
    arg_remove_peaks: "[ --clear-precursor ] arg (=1)  Remove the peaks in a X m/z window around\\nthe precursor from the query and library\\nspectrum."
    top_peaks_for_search: "(=100)     Use ARG of the highest intensity peaks."
    arg_compare_query: "[ --mz-window ] arg (=3)        Compare query to library spectra with\\nprecursor m/z +/- ARG."
    n: "[ --min-peaks ] arg (=20)       Search only spectra with charge no less\\nthan ARG."
    l: "[ --low-charge ] arg (=1)       Search only spectra with charge no less\\nthan ARG."
    arg_search_only_spectra_charge_higherthan: "[ --high-charge ] arg (=5)      Search only spectra with charge no higher\\nthan ARG."
    arg_return_arg: "[ --report-matches ] arg (=5)   Return ARG of the best matches for each"
    psm_result_file: "Return results in a .psm file named ARG."
    arg_return_results: "[ --report-file ] arg           Return results in report file named ARG.\\nDefault is <spectrum file name>.report."
    preserve_order: "Search spectra in the order they appear in\\nthe file.  Default to search as sorted by\\nprecursor m/z."
    arg_file_containing: "[ --parameter-file ] arg        File containing search parameters.\\nCommand line values override file values."
    arg_status_control: "[ --verbosity ] arg (=status)   Control the level of output to stderr.\\n(silent, error, status, warn, debug,\\ndetail, all)  Default status."
    query_dot: "Use -1 to report all."
  }
  output {
    File out_stdout = stdout()
  }
}