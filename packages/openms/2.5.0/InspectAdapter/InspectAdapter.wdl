version 1.0

task InspectAdapter {
  input {
    File? in
    File? out
    Boolean? inspect_in
    Boolean? inspect_out
    Directory? inspect_directory
    Directory? temp_data_directory
    File? dbs
    File? trie_dbs
    File? new_db
    String? instrument
    Float? precursor_mass_tolerance
    Float? peak_mass_tolerance
    Boolean? list_modifications
    Float? modifications
    Boolean? use_mono_isotopic_mod_mass
    File? modifications_xml_file
    String? cleavage
    File? inspect_output
    File? inspect_input
    Boolean? multi_charge
    Int? max_modifications_pp
    Int? tag_count
    Boolean? no_tmp_dbs
    Float? p_value
    String? contact_name
    String? contact_institution
    String? contact_info
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    InspectAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (inspect_in) then "-inspect_in" else ""} \
      ~{if (inspect_out) then "-inspect_out" else ""} \
      ~{if defined(inspect_directory) then ("-inspect_directory " +  '"' + inspect_directory + '"') else ""} \
      ~{if defined(temp_data_directory) then ("-temp_data_directory " +  '"' + temp_data_directory + '"') else ""} \
      ~{if defined(dbs) then ("-dbs " +  '"' + dbs + '"') else ""} \
      ~{if defined(trie_dbs) then ("-trie_dbs " +  '"' + trie_dbs + '"') else ""} \
      ~{if defined(new_db) then ("-new_db " +  '"' + new_db + '"') else ""} \
      ~{if defined(instrument) then ("-instrument " +  '"' + instrument + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(peak_mass_tolerance) then ("-peak_mass_tolerance " +  '"' + peak_mass_tolerance + '"') else ""} \
      ~{if (list_modifications) then "-list_modifications" else ""} \
      ~{if defined(modifications) then ("-modifications " +  '"' + modifications + '"') else ""} \
      ~{if (use_mono_isotopic_mod_mass) then "-use_monoisotopic_mod_mass" else ""} \
      ~{if defined(modifications_xml_file) then ("-modifications_xml_file " +  '"' + modifications_xml_file + '"') else ""} \
      ~{if defined(cleavage) then ("-cleavage " +  '"' + cleavage + '"') else ""} \
      ~{if defined(inspect_output) then ("-inspect_output " +  '"' + inspect_output + '"') else ""} \
      ~{if defined(inspect_input) then ("-inspect_input " +  '"' + inspect_input + '"') else ""} \
      ~{if (multi_charge) then "-multicharge" else ""} \
      ~{if defined(max_modifications_pp) then ("-max_modifications_pp " +  '"' + max_modifications_pp + '"') else ""} \
      ~{if defined(tag_count) then ("-tag_count " +  '"' + tag_count + '"') else ""} \
      ~{if (no_tmp_dbs) then "-no_tmp_dbs" else ""} \
      ~{if defined(p_value) then ("-p_value " +  '"' + p_value + '"') else ""} \
      ~{if defined(contact_name) then ("-contact_name " +  '"' + contact_name + '"') else ""} \
      ~{if defined(contact_institution) then ("-contact_institution " +  '"' + contact_institution + '"') else ""} \
      ~{if defined(contact_info) then ("-contact_info " +  '"' + contact_info + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                      Input file in mzXML or mzData format.\\nNote: In mode 'inspect_out' an Inspect results file is read. (valid formats: 'mzXML', 'mzData')"
    out: "*                     Output file in idXML format.\\nNote: In mode 'inspect_in' an Inspect input file is written. (valid formats: 'idXML')"
    inspect_in: "If this flag is set the InspectAdapter will read in mzXML,\\nwrite an Inspect input file and generate a trie database"
    inspect_out: "If this flag is set the InspectAdapter will read in a Inspect results file\\nand write idXML"
    inspect_directory: "The directory in which Inspect is located"
    temp_data_directory: "A directory in which some temporary files can be stored"
    dbs: "Name(s) of database(s) to search in (FASTA and SwissProt supported)"
    trie_dbs: "Name(s) of databases(s) to search in (trie-format)"
    new_db: "Name of the merged trie database"
    instrument: "The instrument that was used to measure the spectra\\n(If set to QTOF, uses a QTOF-derived fragmentation model,\\nand does not attempt to correct the parent mass.) (valid: 'ESI-ION-TRAP', 'QTOF', 'FT-Hybrid')"
    precursor_mass_tolerance: "The precursor mass tolerance (default: '2.0')"
    peak_mass_tolerance: "The peak mass tolerance (default: '1.0')"
    list_modifications: "Show a list of the available modifications"
    modifications: "The colon-separated modifications; may be\\n<name>,<type>, e.g.: Deamidation,opt or\\n<composition>,<residues>,<type>,<name>, e.g.: H2C2O,KCS,opt,Acetyl or\\n<mass>,<residues>,<type>,<name>, e.g.: 42.0367,KCS,opt,Acetyl or\\nValid values for type are \\\"fix\\\" and \\\"opt\\\" (default)\\nIf you want terminal PTMs, write \\\"cterm\\\" or \\\"nterm\\\" instead of residues"
    use_mono_isotopic_mod_mass: "Use monoisotopic masses for the modifications"
    modifications_xml_file: "Name of an XML file with the modifications"
    cleavage: "The enzyme used for digestion (default: 'Trypsin')"
    inspect_output: "Name for the output file of Inspect (may only be used in a full run)"
    inspect_input: "Name for the input file of Inspect (may only be used in a full run)"
    multi_charge: "Attempt to guess the precursor charge and mass,\\nand consider multiple charge states if feasible"
    max_modifications_pp: "Number of PTMs permitted in a single peptide. (default: '-1')"
    tag_count: "Number of tags to generate (default: '-1')"
    no_tmp_dbs: "No temporary databases are used"
    p_value: "Annotations with inferior p-value are ignored (default: '1.0')"
    contact_name: "Name of the contact (default: 'unknown')"
    contact_institution: "Name of the contact institution (default: 'unknown')"
    contact_info: "Some information about the contact (default: 'unknown')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_inspect_output = "${in_inspect_output}"
  }
}