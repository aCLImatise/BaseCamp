version 1.0

task IDFilter {
  input {
    File? in
    File? out
    Boolean? length
    Boolean? charge
    Boolean? var_mods
    Boolean? unique
    Boolean? unique_per_protein
    Boolean? keep_unreferenced_protein_hits
    Boolean? remove_decoys
    Boolean? delete_unreferenced_peptide_hits
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-length" false="" length} \
      ~{true="-charge" false="" charge} \
      ~{true="-var_mods" false="" var_mods} \
      ~{true="-unique" false="" unique} \
      ~{true="-unique_per_protein" false="" unique_per_protein} \
      ~{true="-keep_unreferenced_protein_hits" false="" keep_unreferenced_protein_hits} \
      ~{true="-remove_decoys" false="" remove_decoys} \
      ~{true="-delete_unreferenced_peptide_hits" false="" delete_unreferenced_peptide_hits} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                                               Input file  (valid formats: 'idXML')"
    out: "*                                              Output file  (valid formats: 'idXML')"
    length: "[min]:[max]                                       Keep only peptide hits with a sequence length in this range. (default: ':')"
    charge: "[min]:[max]                                       Keep only peptide hits with charge states in this range. (default: ':')"
    var_mods: "Keep only peptide hits with variable modifications (as defined in the 'SearchParameters' section of the input file)."
    unique: "If a peptide hit occurs more than once per peptide ID, only one instance is kept."
    unique_per_protein: "Only peptides matching exactly one protein are kept. Remember that isoforms count as different proteins!"
    keep_unreferenced_protein_hits: "Proteins not referenced by a peptide are retained in the IDs."
    remove_decoys: "Remove proteins according to the information in the user parameters. Usually used in combination with 'delete_unreferenced_peptide_hits'."
    delete_unreferenced_peptide_hits: "Peptides not referenced by any protein are deleted in the IDs. Usually used in combination with 'score:prot' or 'thresh:prot'."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}