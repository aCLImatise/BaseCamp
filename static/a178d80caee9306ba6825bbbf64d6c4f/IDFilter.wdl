version 1.0

task IDFilter {
  input {
    File? in
    File? out
    Boolean? in_silico_digestion
    Boolean? missed_cleavages
    Boolean? var_mods
    Boolean? remove_shared_peptides
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
      ~{true="-in_silico_digestion" false="" in_silico_digestion} \
      ~{true="-missed_cleavages" false="" missed_cleavages} \
      ~{true="-var_mods" false="" var_mods} \
      ~{true="-remove_shared_peptides" false="" remove_shared_peptides} \
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
    in_silico_digestion: ":fasta <file>                         Fasta protein sequence database. (valid formats: 'fasta')"
    missed_cleavages: ":number_of_missed_cleavages [min]:[max]  Range of allowed missed cleavages in the peptide sequences. For example: 0:1 -> peptides with two or more missed cleavages will be removed, 0:0 -> peptides with any missed cleavages will be removed (default: ':')"
    var_mods: "Keep only peptide hits with variable modifications (as defined in the 'SearchParameters' section of the input file)."
    remove_shared_peptides: "Only peptides matching exactly one protein are kept. Remember that isoforms count as different proteins!"
    keep_unreferenced_protein_hits: "Proteins not referenced by a peptide are retained in the IDs."
    remove_decoys: "Remove proteins according to the information in the user parameters. Usually used in combination with 'delete_unreferenced_peptide_hits'."
    delete_unreferenced_peptide_hits: "Peptides not referenced by any protein are deleted in the IDs. Usually used in combination with 'score:prot' or 'thresh:prot'."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}