version 1.0

task EICExtractor {
  input {
    File? in
    File? in_header
    File? pos
    Boolean? rt_to_l
    Boolean? mz_to_l
    Boolean? rt_collect
    Boolean? auto_rt
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    EICExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_header) then ("-in_header " +  '"' + in_header + '"') else ""} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if (rt_to_l) then "-rt_tol" else ""} \
      ~{if (mz_to_l) then "-mz_tol" else ""} \
      ~{if (rt_collect) then "-rt_collect" else ""} \
      ~{if (auto_rt) then "-auto_rt" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*        Input raw data file (valid formats: 'mzML')"
    in_header: "[for Waters data only] Read additional information from _HEADER.TXT. Provide one for each raw input file. (valid formats: 'txt')"
    pos: "*       Input config file stating where to find signal (valid formats: 'edta')"
    rt_to_l: "RT tolerance in [s] for finding max peak (whole RT range around RT middle) (default: '3.0')"
    mz_to_l: "M/z tolerance in [ppm] for finding a peak (default: '10.0')"
    rt_collect: "# of scans up & down in RT from highest point for ppm estimation in result (default: '1')"
    auto_rt: ":enabled   Automatically detect injection peaks from TIC and quantify all m/z x RT combinations."
    out: "*       Output quantitation file (multiple columns for each input compound) (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}