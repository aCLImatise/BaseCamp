version 1.0

task DTAExtractor {
  input {
    File? in
    File? out
    Boolean? mz
    Boolean? rt
    Array[String] level
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    DTAExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-mz" false="" mz} \
      ~{true="-rt" false="" rt} \
      ~{if defined(level) then ("-level " +  '"' + level + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*        Input file  (valid formats: 'mzML')"
    out: "*       Base name of DTA output files (RT, m/z and extension are appended)"
    mz: "[min]:[max]    M/z range of precursor peaks to extract. This option is ignored for MS level 1 (default: ':')"
    rt: "[min]:[max]    Retention time range of spectra to extract (default: ':')"
    level: "...    MS levels to extract (default: '1,2,3')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}