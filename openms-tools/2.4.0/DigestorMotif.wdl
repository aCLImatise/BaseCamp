version 1.0

task DigestorMotif {
  input {
    File? in
    File? out
    String? missed_cleavages
    String? mass_accuracy
    String? min_length
    String? out_option
    String? enzyme
    String? motif
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    DigestorMotif \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(missed_cleavages) then ("-missed_cleavages " +  '"' + missed_cleavages + '"') else ""} \
      ~{if defined(mass_accuracy) then ("-mass_accuracy " +  '"' + mass_accuracy + '"') else ""} \
      ~{if defined(min_length) then ("-min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(out_option) then ("-out_option " +  '"' + out_option + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(motif) then ("-motif " +  '"' + motif + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                 FASTA input file (valid formats: 'fasta')"
    out: "*                Output file (peptides) (valid formats: 'idXML')"
    missed_cleavages: "The number of allowed missed cleavages (default: '1' min: '0')"
    mass_accuracy: "Give your mass accuracy in ppb (default: '1000')"
    min_length: "Minimum length of peptide (default: '6')"
    out_option: "Indicate 1 (peptide table only), 2 (statistics only) or (both peptide table + statistics) (default: '1')"
    enzyme: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C', 'V8-E', 'staphylococcal protease/D', 'V8-DE', 'Asp-N_ambic', 'Formic_acid', 'TrypChymo', 'Trypsin/P', 'Lys-C/P', 'Chymotrypsin/P', 'leukocyte elastase', 'Chymotrypsin', 'Lys-N', 'Asp-N', 'proline-endopeptidase/HKR', 'Glu-C+P', 'Trypsin', 'Asp-N/B', 'unspecific cleavage', 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate', 'CNBr', 'PepsinA', 'proline endopeptidase', 'glutamyl endopeptidase', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'Arg-C/P', 'Lys-C')"
    motif: "The motif for the restricted peptidome (default: 'M')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}