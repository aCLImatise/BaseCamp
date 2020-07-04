version 1.0

task DeMeanderize {
  input {
    String? in
    String? out
    Int? num_spots_per_row
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    DeMeanderize \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(num_spots_per_row) then ("-num_spots_per_row " +  '"' + num_spots_per_row + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*              Input experiment file, containing the wrongly sorted spectra. (valid formats: 'mzML')"
    out: "*             Output experiment file with correctly sorted spectra. (valid formats: 'mzML')"
    num_spots_per_row: "Number of spots in one column, until next row is spotted. (default: '48' min: '1')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}