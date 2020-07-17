version 1.0

task SimpleSearchEngine {
  input {
    File? in
    File? database
    File? out
    String? enzyme
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SimpleSearchEngine \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                                    Input file  (valid formats: 'mzML')"
    database: "*                              Input file  (valid formats: 'fasta')"
    out: "*                                   Output file  (valid formats: 'idXML')"
    enzyme: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'PepsinA', 'Lys-N', 'Lys-C/P', 'Lys-C', 'Formic_acid', 'Chymotrypsin/P', 'CNBr', 'Trypsin', 'no cleavage', 'unspecific cleavage', 'Trypsin/P', 'V8-DE', 'TrypChymo', 'proline endopeptidase', 'Arg-C/P', 'Asp-N', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'Chymotrypsin', 'Asp-N/B', '2-iodobenzoate', 'iodosobenzoate', 'Arg-C', 'V8-E', 'leukocyte elastase', 'glutamyl endopeptidase', 'Alpha-lytic protease', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Asp-N_ambic', 'staphylococcal protease/D', 'proline-endopeptidase/HKR')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}