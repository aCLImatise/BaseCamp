version 1.0

task SpectraMerger {
  input {
    File? in
    File? out
    String? merging_method
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SpectraMerger \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(merging_method) then ("-merging_method " +  '"' + merging_method + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*               Input mzML file. (valid formats: 'mzML')"
    out: "*              Output mzML file with merged spectra. (valid formats: 'mzML')"
    merging_method: "Method of merging which should be used. (default: 'average_gaussian' valid: 'average_gaussian', 'average_tophat', 'precursor_method', 'block_method')"
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