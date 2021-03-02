version 1.0

task DigestorMotif {
  input {
    File? in
    File? out
    Int? missed_cleavages
    Int? mass_accuracy
    Int? min_length
    Int? out_option
    Int? enzyme
    String? motif
    File? ini
    Int? threads
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
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                 FASTA input file (valid formats: 'fasta')"
    out: "*                Output file (peptides)\\n(valid formats: 'idXML')"
    missed_cleavages: "The number of allowed missed cleavages (default: '1' min: '0')"
    mass_accuracy: "Give your mass accuracy in ppb (default: '1000')"
    min_length: "Minimum length of peptide (default: '6')"
    out_option: "Indicate 1 (peptide table only), 2 (statistics only) or (both peptide table + statistics) (default: '1')"
    enzyme: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C', 'Trypsin', 'Lys-C/P', 'PepsinA', 'no cleavage', 'unspecific cleavage', 'Formic_acid', 'Chymotrypsin', 'Chymotrypsin/P', 'CNBr', 'Asp-N_ambic', 'TrypChymo', 'Trypsin/P', 'V8-DE', 'V8-E', 'Asp-N', 'Asp-N/B', 'Glu-C+P', 'PepsinA + P', 'leukocyte elastase', 'proline endopeptidase', 'glutamyl endopeptidase', 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'proline-endopeptidase/HKR', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'Arg-C/P', 'Lys-C', 'Lys-N')"
    motif: "The motif for the restricted peptidome (default: 'M')"
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