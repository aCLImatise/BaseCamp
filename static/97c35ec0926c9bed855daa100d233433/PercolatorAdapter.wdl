version 1.0

task PercolatorAdapter {
  input {
    File? in
    File? in_decoy
    File? in_osw
    File? out
    String? out_type
    String? enzyme
    String? percolator_executable
    Boolean? peptide_level_f_drs
    Boolean? protein_level_f_drs
    String? osw_level
    String? score_type
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PercolatorAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_decoy) then ("-in_decoy " +  '"' + in_decoy + '"') else ""} \
      ~{if defined(in_osw) then ("-in_osw " +  '"' + in_osw + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(percolator_executable) then ("-percolator_executable " +  '"' + percolator_executable + '"') else ""} \
      ~{true="-peptide-level-fdrs" false="" peptide_level_f_drs} \
      ~{true="-protein-level-fdrs" false="" protein_level_f_drs} \
      ~{if defined(osw_level) then ("-osw_level " +  '"' + osw_level + '"') else ""} \
      ~{if defined(score_type) then ("-score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "Input file(s) (valid formats: 'mzid', 'idXML')"
    in_decoy: "Input decoy file(s) in case of separate searches (valid formats: 'mzid', 'idXML')"
    in_osw: "Input file in OSW format (valid formats: 'OSW')"
    out: "*                          Output file (valid formats: 'mzid', 'idXML', 'osw')"
    out_type: "Output file type -- default: determined from file extension or content. (valid: 'mzid', 'idXML', 'osw')"
    enzyme: "Type of enzyme: no_enzyme,elastase,pepsin,proteinasek,thermolysin,chymotrypsin,lys-n,lys-c,arg-c,asp-n,glu-c,trypsin,trypsinp (default: 'trypsin' valid: 'no_enzyme', 'elastase', 'pepsin', 'proteinasek', 'thermolysin', 'chymotrypsin', 'lys-n', 'lys-c', 'arg-c', 'asp-n', 'glu-c', 'trypsin', 'trypsinp')"
    percolator_executable: "*  The Percolator executable. Provide a full or relative path, or make sure it can be found in your PATH environment."
    peptide_level_f_drs: "Calculate peptide-level FDRs instead of PSM-level FDRs."
    protein_level_f_drs: "Use the picked protein-level FDR to infer protein probabilities. Use the -fasta option and -decoy-pattern to set the Fasta file and decoy pattern."
    osw_level: "OSW: Either \"ms1\", \"ms2\" or \"transition\"; the data level selected for scoring. (default: 'ms2')"
    score_type: "Type of the peptide main score (default: 'q-value' valid: 'q-value', 'pep', 'svm')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}