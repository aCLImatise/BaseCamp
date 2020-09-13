version 1.0

task ExternalCalibration {
  input {
    File? in
    File? out
    Boolean? offset
    Boolean? slope
    Boolean? power
    Array[String] ms_level
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ExternalCalibration \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (slope) then "-slope" else ""} \
      ~{if (power) then "-power" else ""} \
      ~{if defined(ms_level) then ("-ms_level " +  '"' + ms_level + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input peak file (valid formats: 'mzML')"
    out: "*       Output file  (valid formats: 'mzML')"
    offset: "Mass offset in ppm (default: '0.0')"
    slope: "Slope (dependent on m/z) (default: '0.0')"
    power: "Power (dependent on m/z) (default: '0.0')"
    ms_level: "MS levels to apply the transformation onto. Scans with other levels remain unchanged. (default: '[1 2 3]')"
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