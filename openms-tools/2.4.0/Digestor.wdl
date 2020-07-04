version 1.0

task Digestor {
  input {
    File? in
    File? out
    String? out_type
    String? missed_cleavages
    String? min_length
    String? max_length
    String? enzyme
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    Digestor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(missed_cleavages) then ("-missed_cleavages " +  '"' + missed_cleavages + '"') else ""} \
      ~{if defined(min_length) then ("-min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("-max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                  Input file (valid formats: 'fasta')"
    out: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
    out_type: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid: 'idXML', 'fasta')"
    missed_cleavages: "The number of allowed missed cleavages (default: '1' min: '0')"
    min_length: "Minimum length of peptide (default: '6')"
    max_length: "Maximum length of peptide (default: '40')"
    enzyme: "The type of digestion enzyme (default: 'Trypsin' valid: 'Arg-C', 'V8-E', 'staphylococcal protease/D', 'V8-DE', 'Chymotrypsin', 'Asp-N_ambic', 'Formic_acid', 'TrypChymo', 'Trypsin/P', 'Lys-C/P', 'leukocyte elastase', 'Lys-N', 'Asp-N', 'proline-endopeptidase/HKR', 'Glu-C+P', 'Trypsin', 'Asp-N/B', 'unspecific cleavage', 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate', 'CNBr', 'glutamyl endopeptidase', 'PepsinA', 'proline endopeptidase', 'Chymotrypsin/P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'Arg-C/P', 'Lys-C')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}