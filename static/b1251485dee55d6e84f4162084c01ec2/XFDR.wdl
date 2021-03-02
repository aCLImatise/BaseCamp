version 1.0

task XFDR {
  input {
    File? in
    File? in_type
    File? out_idxml
    File? out_mz_ident_ml
    File? out_x_quest
    String? decoy_string
    Int? min_border
    Int? max_border
    Int? min_deltas
    Int? minions_matched
    Boolean? unique_xl
    Boolean? no_q_values
    Int? min_score
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    XFDR \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out_idxml) then ("-out_idXML " +  '"' + out_idxml + '"') else ""} \
      ~{if defined(out_mz_ident_ml) then ("-out_mzIdentML " +  '"' + out_mz_ident_ml + '"') else ""} \
      ~{if defined(out_x_quest) then ("-out_xquest " +  '"' + out_x_quest + '"') else ""} \
      ~{if defined(decoy_string) then ("-decoy_string " +  '"' + decoy_string + '"') else ""} \
      ~{if defined(min_border) then ("-minborder " +  '"' + min_border + '"') else ""} \
      ~{if defined(max_border) then ("-maxborder " +  '"' + max_border + '"') else ""} \
      ~{if defined(min_deltas) then ("-mindeltas " +  '"' + min_deltas + '"') else ""} \
      ~{if defined(minions_matched) then ("-minionsmatched " +  '"' + minions_matched + '"') else ""} \
      ~{if (unique_xl) then "-uniquexl" else ""} \
      ~{if (no_q_values) then "-no_qvalues" else ""} \
      ~{if defined(min_score) then ("-minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Crosslink Identifications in either xquest.xml, idXML, or mzIdentML format (as produced by OpenPepXL) (valid formats: 'xml', 'idXML', 'mzid', 'xquest.xml')"
    in_type: "Type of input file provided with -in (valid: 'xml', 'idXML', 'mzid', 'xquest.xml')"
    out_idxml: "Output as idXML file (valid formats: 'idXML')"
    out_mz_ident_ml: "Output as mzIdentML file (valid formats: 'mzid')"
    out_x_quest: "Output as xquest.xml file (valid formats: 'xquest.xml')"
    decoy_string: "Prefix of decoy protein ids. The correspondig target protein id should be retrievable by deleting this prefix. (default: 'DECOY_')"
    min_border: "Filter for minimum precursor mass error (ppm). (default: '-1')"
    max_border: "Filter for maximum precursor mass error (ppm). (default: '-1')"
    min_deltas: "Filter for delta score, 0 is no filter. Minimum delta score required, hits are rejected if larger or equal. (default: '0' min: '0' max: '1')"
    minions_matched: "Filter for minimum matched ions per peptide. (default: '0' min: '0')"
    unique_xl: "Calculate statistics based only on unique IDs."
    no_q_values: "Do not transform simple FDR to q-values"
    min_score: "Minimum score to be considered for FDR calculation (default: '0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out_idxml = "${in_out_idxml}"
    File out_out_mz_ident_ml = "${in_out_mz_ident_ml}"
    File out_out_x_quest = "${in_out_x_quest}"
  }
}