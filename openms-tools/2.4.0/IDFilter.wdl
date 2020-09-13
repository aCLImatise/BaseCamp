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
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (charge) then "-charge" else ""} \
      ~{if (var_mods) then "-var_mods" else ""} \
      ~{if (unique) then "-unique" else ""} \
      ~{if (unique_per_protein) then "-unique_per_protein" else ""} \
      ~{if (keep_unreferenced_protein_hits) then "-keep_unreferenced_protein_hits" else ""} \
      ~{if (remove_decoys) then "-remove_decoys" else ""} \
      ~{if (delete_unreferenced_peptide_hits) then "-delete_unreferenced_peptide_hits" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
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
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}