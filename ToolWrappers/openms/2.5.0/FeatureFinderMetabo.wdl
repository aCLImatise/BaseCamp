version 1.0

task FeatureFinderMetabo {
  input {
    File? in
    File? out
    File? out_chrom
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FeatureFinderMetabo \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_chrom) then ("-out_chrom " +  '"' + out_chrom + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Centroided mzML file (valid formats: 'mzML')"
    out: "*       FeatureXML file with metabolite features (valid formats: 'featureXML')"
    out_chrom: "Optional mzML file with chromatograms (valid formats: 'mzML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}