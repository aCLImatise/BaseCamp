version 1.0

task OpenPepXLLF {
  input {
    File? in
    File? database
    String? decoy_string
    String? decoy_prefix
    File? out_idxml
    File? out_mz_ident_ml
    File? out_x_quest_xml
    File? out_x_quest_spec_xml
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenPepXLLF \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(decoy_string) then ("-decoy_string " +  '"' + decoy_string + '"') else ""} \
      ~{if defined(decoy_prefix) then ("-decoy_prefix " +  '"' + decoy_prefix + '"') else ""} \
      ~{if defined(out_idxml) then ("-out_idXML " +  '"' + out_idxml + '"') else ""} \
      ~{if defined(out_mz_ident_ml) then ("-out_mzIdentML " +  '"' + out_mz_ident_ml + '"') else ""} \
      ~{if defined(out_x_quest_xml) then ("-out_xquestxml " +  '"' + out_x_quest_xml + '"') else ""} \
      ~{if defined(out_x_quest_spec_xml) then ("-out_xquest_specxml " +  '"' + out_x_quest_spec_xml + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                       Input file containing the spectra. (valid formats: 'mzML')"
    database: "*                                 Input file containing the protein database. (valid formats: 'fasta')"
    decoy_string: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions in the protein database to indicate decoy proteins. (default: 'DECOY_')"
    decoy_prefix: "Set to true, if the decoy_string is a prefix of accessions in the protein database. Otherwise it is a suffix. (default: 'true' valid: 'true', 'false')"
    out_idxml: "Results in idXML format (at least one of these output parameters should be set, otherwise you will not have any results). (valid formats: 'idXML')"
    out_mz_ident_ml: "Results in mzIdentML (.mzid) format (at least one of these output parameters should be set, otherwise you will not have any results) (valid formats: 'mzid')"
    out_x_quest_xml: "Results in the xquest.xml format (at least one of these output parameters should be set, otherwise you will not have any results). (valid formats: 'xquest.xml')"
    out_x_quest_spec_xml: "Matched spectra in the xQuest .spec.xml format for spectra visualization in the xQuest results manager. (valid formats: 'spec.xml')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}