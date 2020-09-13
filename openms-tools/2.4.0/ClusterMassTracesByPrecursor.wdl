version 1.0

task ClusterMassTracesByPrecursor {
  input {
    File? in_ms_one
    File? in_swath
    File? out
    Boolean? assign_unassigned_to_all
    Float? min_pearson_correlation
    Int? max_lag
    Int? min_nr_ions
    Int? max_rt_apex_difference
    Int? swath_lower
    Int? swath_upper
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ClusterMassTracesByPrecursor \
      ~{if defined(in_ms_one) then ("-in_ms1 " +  '"' + in_ms_one + '"') else ""} \
      ~{if defined(in_swath) then ("-in_swath " +  '"' + in_swath + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (assign_unassigned_to_all) then "-assign_unassigned_to_all" else ""} \
      ~{if defined(min_pearson_correlation) then ("-min_pearson_correlation " +  '"' + min_pearson_correlation + '"') else ""} \
      ~{if defined(max_lag) then ("-max_lag " +  '"' + max_lag + '"') else ""} \
      ~{if defined(min_nr_ions) then ("-min_nr_ions " +  '"' + min_nr_ions + '"') else ""} \
      ~{if defined(max_rt_apex_difference) then ("-max_rt_apex_difference " +  '"' + max_rt_apex_difference + '"') else ""} \
      ~{if defined(swath_lower) then ("-swath_lower " +  '"' + swath_lower + '"') else ""} \
      ~{if defined(swath_upper) then ("-swath_upper " +  '"' + swath_upper + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in_ms_one: "*                    MS1 mass traces (valid formats: 'consensusXML')"
    in_swath: "*                  MS2 / SWATH mass traces (valid formats: 'consensusXML')"
    out: "*                       Output file (valid formats: 'mzML')"
    assign_unassigned_to_all: "Assign unassigned MS2 fragments to all precursors (only for ms1_centrif)"
    min_pearson_correlation: "Minimal pearson correlation score to match elution profiles to each other. (default: '0.7')"
    max_lag: "Maximal lag (e.g. by how many spectra the peak may be shifted at most). This parameter will depend on your chromatographic setup but a number between 1 and 3 is usually sensible. (default: '1')"
    min_nr_ions: "Minimal number of ions to report a spectrum. (default: '3')"
    max_rt_apex_difference: "Maximal difference of the apex in retention time (in seconds). This is a hard parameter, all profiles further away will not be considered at all. (default: '5')"
    swath_lower: "Swath lower isolation window (default: '0')"
    swath_upper: "Swath upper isolation window (default: '0')"
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