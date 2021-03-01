version 1.0

task Digestor {
  input {
    File? in
    File? out
    File? out_type
    Int? missed_cleavages
    Int? min_length
    Int? max_length
    Int? enzyme
    File? ini
    Int? threads
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
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                  Input file (valid formats: 'fasta')"
    out: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
    out_type: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid: 'idXML', 'fasta')"
    missed_cleavages: "The number of allowed missed cleavages (default: '1' min: '0')"
    min_length: "Minimum length of peptide (default: '6')"
    max_length: "Maximum length of peptide (default: '40')"
    enzyme: "The type of digestion enzyme (default: 'Trypsin' valid: 'glutamyl endopeptidase', 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'Arg-C/P', 'Asp-N', 'Asp-N/B', 'proline-endopeptidase/HKR', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'no cleavage', 'unspecific cleavage', 'Trypsin', 'Arg-C', 'Formic_acid', 'Lys-C', 'Lys-N', 'Lys-C/P', 'Asp-N_ambic', 'Chymotrypsin', 'Chymotrypsin/P', 'CNBr', 'V8-DE', 'V8-E', 'leukocyte elastase', 'proline endopeptidase', 'PepsinA', 'elastase-trypsin-chymotrypsin', 'TrypChymo', 'Trypsin/P')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_type = "${in_out_type}"
  }
}