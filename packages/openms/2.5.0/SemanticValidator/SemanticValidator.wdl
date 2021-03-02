version 1.0

task SemanticValidator {
  input {
    File? in
    File? mapping_file
    String? cv
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SemanticValidator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(mapping_file) then ("-mapping_file " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(cv) then ("-cv " +  '"' + cv + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*            Input file (any xml file) (valid formats: 'analysisXML', 'mzML', 'TraML', 'mzid', 'mzData', 'xml')"
    mapping_file: "*  Mapping file which is used to semantically validate the given XML file against this mapping file (see 'share/OpenMS/MAPPING' for templates). (valid formats: 'xml')"
    cv: "Controlled Vocabulary files containg the CV terms (if left empty, a set of default files are used) (valid formats: 'obo')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}