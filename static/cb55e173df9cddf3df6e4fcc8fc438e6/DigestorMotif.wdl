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
    enzyme: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C', 'Arg-C/P', 'Asp-N', 'proline endopeptidase', 'glutamyl endopeptidase', 'proline-endopeptidase/HKR', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'Asp-N/B', 'Asp-N_ambic', 'Chymotrypsin', 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C', 'Lys-N', 'Lys-C/P', 'PepsinA', 'TrypChymo', 'Trypsin/P', 'V8-DE', 'V8-E', 'leukocyte elastase', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'unspecific cleavage', 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'Trypsin')"
    motif: "The motif for the restricted peptidome (default: 'M')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}