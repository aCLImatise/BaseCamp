version 1.0

task InternalCalibration {
  input {
    File? in
    File? out
    File? r_script_executable
    Boolean? ppm_match_tolerance
    Array[String] ms_level
    Boolean? rt_chunking
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    InternalCalibration \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(r_script_executable) then ("-rscript_executable " +  '"' + r_script_executable + '"') else ""} \
      ~{true="-ppm_match_tolerance" false="" ppm_match_tolerance} \
      ~{if defined(ms_level) then ("-ms_level " +  '"' + ms_level + '"') else ""} \
      ~{true="-RT_chunking" false="" rt_chunking} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                                Input peak file (valid formats: 'mzML')"
    out: "*                               Output file  (valid formats: 'mzML')"
    r_script_executable: "Path to the Rscript executable (default: 'Rscript')."
    ppm_match_tolerance: "<delta m/z in [ppm]>  Finding calibrants in raw data uses this tolerance (for lock masses and ID's). (default: '25.0')"
    ms_level: "MS levels to apply the transformation onto. Does not affect calibrant collection. (default: '[1 2 3]')"
    rt_chunking: "<RT window in [sec]>          RT window (one-sided, i.e. left->center, or center->right) around an MS scan in which calibrants are collected to build a model. Set to -1 to use ALL calibrants for all scans, i.e. a global model. (default: '300.0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}