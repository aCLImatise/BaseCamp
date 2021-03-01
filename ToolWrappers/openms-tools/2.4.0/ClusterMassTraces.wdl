version 1.0

task ClusterMassTraces {
  input {
    File? in
    File? out
    Float? min_pearson_correlation
    Int? min_peak_nr
    Int? max_lag
    Int? max_rt_apex_difference
    Int? max_intensity_cut_off
    Int? add_precursor
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ClusterMassTraces \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_pearson_correlation) then ("-min_pearson_correlation " +  '"' + min_pearson_correlation + '"') else ""} \
      ~{if defined(min_peak_nr) then ("-min_peak_nr " +  '"' + min_peak_nr + '"') else ""} \
      ~{if defined(max_lag) then ("-max_lag " +  '"' + max_lag + '"') else ""} \
      ~{if defined(max_rt_apex_difference) then ("-max_rt_apex_difference " +  '"' + max_rt_apex_difference + '"') else ""} \
      ~{if defined(max_intensity_cut_off) then ("-max_intensity_cutoff " +  '"' + max_intensity_cut_off + '"') else ""} \
      ~{if defined(add_precursor) then ("-add_precursor " +  '"' + add_precursor + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                        Mass traces (valid formats: 'consensusXML')"
    out: "*                       Output file (valid formats: 'mzML')"
    min_pearson_correlation: "Minimal pearson correlation score (default: '0.7')"
    min_peak_nr: "Minimal peak nr to output pseudo spectra (default: '1')"
    max_lag: "Maximal lag (default: '1')"
    max_rt_apex_difference: "Maximal difference of the apex in retention time (default: '5')"
    max_intensity_cut_off: "Maximal intensity to be added to a spectrum (default: '0')"
    add_precursor: "Add a precursor mass (default: '0')"
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