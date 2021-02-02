version 1.0

task HighResPrecursorMassCorrector {
  input {
    File? in
    File? out
    Boolean? highest_intensity_peak
    File? out_csv
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    HighResPrecursorMassCorrector \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (highest_intensity_peak) then "-highest_intensity_peak" else ""} \
      ~{if defined(out_csv) then ("-out_csv " +  '"' + out_csv + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                                 Input file (centroided data) (valid formats: 'mzML')"
    out: "*                                Output file (valid formats: 'mzML')"
    highest_intensity_peak: ":mz_tolerance <num>  The precursor mass tolerance to find the highest intensity MS1 peak (Da). Suggested value 1/max. expected charge. (Disable method by setting value to 0.0) (default: '0')"
    out_csv: "Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak' algorithm (see corresponding subsection) containing columns: RT, uncorrectedMZ, correctedMZ, deltaMZ. (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_csv = "${in_out_csv}"
  }
}