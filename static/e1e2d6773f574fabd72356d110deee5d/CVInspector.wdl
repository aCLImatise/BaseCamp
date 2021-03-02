version 1.0

task CVInspector {
  input {
    String? cv_files
    File? cv_names
    File? mapping_file
    String? ignore_cv
    File? html
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    CVInspector \
      ~{if defined(cv_files) then ("-cv_files " +  '"' + cv_files + '"') else ""} \
      ~{if defined(cv_names) then ("-cv_names " +  '"' + cv_names + '"') else ""} \
      ~{if defined(mapping_file) then ("-mapping_file " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(ignore_cv) then ("-ignore_cv " +  '"' + ignore_cv + '"') else ""} \
      ~{if defined(html) then ("-html " +  '"' + html + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    cv_files: "*    List of ontology files in OBO format. (valid formats: 'obo')"
    cv_names: "*    List of identifiers (one for each ontology file)."
    mapping_file: "Mapping file in CVMapping (XML) format. (valid formats: 'XML')"
    ignore_cv: "A list of CV identifiers which should be ignored. (default: '[UO PATO BTO]')"
    html: "Writes an HTML version of the mapping file with annotated CV terms (valid formats: 'HTML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}