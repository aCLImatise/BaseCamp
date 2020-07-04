version 1.0

task MapAlignerSpectrum {
  input {
    File? in
    File? out
    File? traf_o_out
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MapAlignerSpectrum \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(traf_o_out) then ("-trafo_out " +  '"' + traf_o_out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*        Input files to align (all must have the same file type) (valid formats: 'mzML')"
    out: "Output files (same file type as 'in'). This option or 'trafo_out' has to be provided; they can be used together. (valid formats: 'mzML')"
    traf_o_out: "Transformation output files. This option or 'out' has to be provided; they can be used together. (valid formats: 'trafoXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}