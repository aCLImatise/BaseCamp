version 1.0

task DecoyDatabase {
  input {
    Boolean? in
    File? out
    String? decoy_string
    String? decoy_string_position
    Boolean? only_decoy
    String? type
    String? method
    Int? enzyme
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    DecoyDatabase \
      ~{if (in) then "-in" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(decoy_string) then ("-decoy_string " +  '"' + decoy_string + '"') else ""} \
      ~{if defined(decoy_string_position) then ("-decoy_string_position " +  '"' + decoy_string_position + '"') else ""} \
      ~{if (only_decoy) then "-only_decoy" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
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
    in: "<file(s)>*                   Input FASTA file(s), each containing a database. It is recommended to include a contaminant database as well. (valid formats: 'fasta')"
    out: "*                     Output FASTA file where the decoy database will be written to. (valid formats: 'fasta')"
    decoy_string: "String that is combined with the accession of the protein identifier to indicate a decoy protein. (default: 'DECOY_')"
    decoy_string_position: "Should the 'decoy_string' be prepended (prefix) or appended (suffix) to the protein accession? (default: 'prefix' valid: 'prefix', 'suffix')"
    only_decoy: "Write only decoy proteins to the output database instead of a combined database."
    type: "Type of sequence. RNA sequences may contain modification codes, which will be handled correctly if this is set to 'RNA'. (default: 'protein' valid: 'protein', 'RNA')"
    method: "Method by which decoy sequences are generated from target sequences. Note that all sequences are shuffled using the same random seed, ensuring that identical sequences produce the same shuffled decoy sequences. Shuffled sequences that produce highly similar output sequences are shuffled again (see shuffle_sequence_identity_threshold). (default: 'reverse' valid: 'reverse', 'shuffle')"
    enzyme: "Enzyme used for the digestion of the sample. Only applicable if parameter 'type' is 'protein'. (default: 'Trypsin' valid: '2-iodobenzoate', 'iodosobenzoate', 'Formic_acid', 'Lys-C', 'Chymotrypsin/P', 'CNBr', 'Asp-N_ambic', 'Chymotrypsin', 'Lys-C/P', 'PepsinA', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'unspecific cleavage', 'TrypChymo', 'Trypsin/P', 'Arg-C', 'Arg-C/P', 'V8-DE', 'V8-E', 'leukocyte elastase', 'proline endopeptidase', 'glutamyl endopeptidase', 'Alpha-lytic protease', 'Asp-N', 'Asp-N/B', 'staphylococcal protease/D', 'proline-endopeptidase/HKR', 'Glu-C+P', 'PepsinA + P', 'Trypsin', 'Lys-N')"
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