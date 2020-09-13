version 1.0

task HighResPrecursorMassCorrector {
  input {
    File? in
    File? out
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
      ~{if defined(out_csv) then ("-out_csv " +  '"' + out_csv + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                                         Input file (centroided data) (valid formats: 'mzML')"
    out: "*                                        Output file (valid formats: 'mzML')"
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