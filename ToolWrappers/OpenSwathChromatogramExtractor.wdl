version 1.0

task OpenSwathChromatogramExtractor {
  input {
    String? in
    File? tr
    File? rt_norm
    File? out
    Float? min_upper_edge_dist
    Int? rt_window
    Int? ion_mobility_window
    Int? mz_window
    Boolean? ppm
    Boolean? is_swath
    Boolean? extract_ms_one
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathChromatogramExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(rt_norm) then ("-rt_norm " +  '"' + rt_norm + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_upper_edge_dist) then ("-min_upper_edge_dist " +  '"' + min_upper_edge_dist + '"') else ""} \
      ~{if defined(rt_window) then ("-rt_window " +  '"' + rt_window + '"') else ""} \
      ~{if defined(ion_mobility_window) then ("-ion_mobility_window " +  '"' + ion_mobility_window + '"') else ""} \
      ~{if defined(mz_window) then ("-mz_window " +  '"' + mz_window + '"') else ""} \
      ~{if (ppm) then "-ppm" else ""} \
      ~{if (is_swath) then "-is_swath" else ""} \
      ~{if (extract_ms_one) then "-extract_MS1" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                   Input files separated by blank (valid formats: 'mzML')"
    tr: "*                    Transition file ('TraML' or 'csv') (valid formats: 'csv', 'traML')"
    rt_norm: "RT normalization file (how to map the RTs of this run to the ones stored in the library) (valid formats: 'trafoXML')"
    out: "*                   Output file (valid formats: 'mzML')"
    min_upper_edge_dist: "Minimal distance to the edge to still consider a precursor, in Thomson (default: '0.0')"
    rt_window: "Extraction window in RT dimension (-1 means extract over the whole range). This is the full window size, e.g. a value of 1000 seconds would extract 500 seconds on either side. (default: '-1.0')"
    ion_mobility_window: "Extraction window in ion mobility dimension (in milliseconds). This is the full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds on either side. (default: '-1.0')"
    mz_window: "Extraction window in m/z dimension (in Thomson, to use ppm see -ppm flag). This is the full window size, e.g. 100 ppm would extract 50 ppm on either side. (default: '0.05' min: '0.0')"
    ppm: "M/z extraction_window is in ppm"
    is_swath: "Set this flag if the data is SWATH data"
    extract_ms_one: "Extract the MS1 transitions based on the precursor values in the TraML file (useful for extracting MS1 XIC)"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}