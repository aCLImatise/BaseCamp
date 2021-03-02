version 1.0

task SimpleSearchEngine {
  input {
    File? in
    File? database
    File? out
    Int? enzyme
    File? ini
    Int? threads
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
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                    Input file  (valid formats: 'mzML')"
    database: "*                              Input file  (valid formats: 'fasta')"
    out: "*                                   Output file  (valid formats: 'idXML')"
    enzyme: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C/P', 'Trypsin', 'Lys-C/P', 'PepsinA', 'Arg-C', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'unspecific cleavage', 'Asp-N', 'Asp-N/B', 'Trypsin/P', 'V8-DE', 'Lys-C', 'Lys-N', 'CNBr', 'Formic_acid', 'Chymotrypsin', 'Chymotrypsin/P', 'no cleavage', 'TrypChymo', 'V8-E', 'leukocyte elastase', 'proline endopeptidase', 'Asp-N_ambic', 'proline-endopeptidase/HKR', 'Glu-C+P', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'glutamyl endopeptidase', 'Alpha-lytic protease', 'elastase-trypsin-chymotrypsin')"
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