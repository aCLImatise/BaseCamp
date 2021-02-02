version 1.0

task SpecLibSearcher {
  input {
    String? in
    File? lib
    String? out
    Boolean? fragment
    String? compare_function
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SpecLibSearcher \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (fragment) then "-fragment" else ""} \
      ~{if defined(compare_function) then ("-compare_function " +  '"' + compare_function + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                                      Input files (valid formats: 'mzML')"
    lib: "*                                      Searchable spectral library (MSP format) (valid formats: 'msp')"
    out: "*                                     Output files. Have to be as many as input files (valid formats: 'idXML')"
    fragment: ":mass_tolerance <tolerance>              Fragment mass tolerance (default: '10')"
    compare_function: "Function for similarity comparison (default: 'ZhangSimilarityScore' valid: 'PeakAlignment', 'SpectrumAlignmentScore', 'SpectrumCheapDPCorr', 'SpectrumPrecursorComparator', 'SteinScottImproveScore', 'ZhangSimilarityScore')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}