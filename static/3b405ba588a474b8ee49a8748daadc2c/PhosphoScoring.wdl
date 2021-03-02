version 1.0

task PhosphoScoring {
  input {
    File? in
    File? id
    File? out
    Int? fragment_mass_tolerance
    String? fragment_mass_unit
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PhosphoScoring \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(fragment_mass_tolerance) then ("-fragment_mass_tolerance " +  '"' + fragment_mass_tolerance + '"') else ""} \
      ~{if defined(fragment_mass_unit) then ("-fragment_mass_unit " +  '"' + fragment_mass_unit + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                       Input file with MS/MS spectra (valid formats: 'mzML')"
    id: "*                       Identification input file which contains a search against a concatenated sequence database (valid formats: 'idXML')"
    out: "*                      Identification output annotated with phosphorylation scores"
    fragment_mass_tolerance: "Fragment mass tolerance for spectrum comparisons (default: '0.05' min: '0.0')"
    fragment_mass_unit: "Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}