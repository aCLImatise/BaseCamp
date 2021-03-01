version 1.0

task MascotAdapter {
  input {
    File? in
    File? out
    Boolean? mascot_in
    Boolean? mascot_out
    String? instrument
    Int? precursor_mass_tolerance
    Int? peak_mass_tolerance
    String? modifications
    String? variable_modifications
    String? db
    Int? hits
    Int? cleavage
    Int? missed_cleavages
    Int? sig_threshold
    Int? pep_homol
    Int? pep_ident
    Int? pep_rank
    Int? prot_score
    Int? pep_score
    Int? pep_exp_z
    Int? show_unassigned
    Int? first_dim_rt
    String? boundary
    String? mass_type
    Directory? mascot_directory
    Directory? temp_data_directory
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MascotAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (mascot_in) then "-mascot_in" else ""} \
      ~{if (mascot_out) then "-mascot_out" else ""} \
      ~{if defined(instrument) then ("-instrument " +  '"' + instrument + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(peak_mass_tolerance) then ("-peak_mass_tolerance " +  '"' + peak_mass_tolerance + '"') else ""} \
      ~{if defined(modifications) then ("-modifications " +  '"' + modifications + '"') else ""} \
      ~{if defined(variable_modifications) then ("-variable_modifications " +  '"' + variable_modifications + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(hits) then ("-hits " +  '"' + hits + '"') else ""} \
      ~{if defined(cleavage) then ("-cleavage " +  '"' + cleavage + '"') else ""} \
      ~{if defined(missed_cleavages) then ("-missed_cleavages " +  '"' + missed_cleavages + '"') else ""} \
      ~{if defined(sig_threshold) then ("-sig_threshold " +  '"' + sig_threshold + '"') else ""} \
      ~{if defined(pep_homol) then ("-pep_homol " +  '"' + pep_homol + '"') else ""} \
      ~{if defined(pep_ident) then ("-pep_ident " +  '"' + pep_ident + '"') else ""} \
      ~{if defined(pep_rank) then ("-pep_rank " +  '"' + pep_rank + '"') else ""} \
      ~{if defined(prot_score) then ("-prot_score " +  '"' + prot_score + '"') else ""} \
      ~{if defined(pep_score) then ("-pep_score " +  '"' + pep_score + '"') else ""} \
      ~{if defined(pep_exp_z) then ("-pep_exp_z " +  '"' + pep_exp_z + '"') else ""} \
      ~{if defined(show_unassigned) then ("-show_unassigned " +  '"' + show_unassigned + '"') else ""} \
      ~{if defined(first_dim_rt) then ("-first_dim_rt " +  '"' + first_dim_rt + '"') else ""} \
      ~{if defined(boundary) then ("-boundary " +  '"' + boundary + '"') else ""} \
      ~{if defined(mass_type) then ("-mass_type " +  '"' + mass_type + '"') else ""} \
      ~{if defined(mascot_directory) then ("-mascot_directory " +  '"' + mascot_directory + '"') else ""} \
      ~{if defined(temp_data_directory) then ("-temp_data_directory " +  '"' + temp_data_directory + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                      Input file in mzData format.\\nNote: In mode 'mascot_out' a Mascot results file (.mascotXML) is read"
    out: "*                     Output file in idXML format.\\nNote: In mode 'mascot_in' Mascot generic format is written."
    mascot_in: "If this flag is set the MascotAdapter will read in mzData and write Mascot generic format"
    mascot_out: "If this flag is set the MascotAdapter will read in a Mascot results file (.mascotXML) and write idXML"
    instrument: "The instrument that was used to measure the spectra (default: 'Default')"
    precursor_mass_tolerance: "The precursor mass tolerance (default: '2')"
    peak_mass_tolerance: "The peak mass tolerance (default: '1')"
    modifications: "The modifications i.e. Carboxymethyl (C)"
    variable_modifications: "The variable modifications i.e. Carboxymethyl (C)"
    db: "The database to search in (default: 'MSDB')"
    hits: "The number of hits to report (default: 'AUTO')"
    cleavage: "The enzyme descriptor to the enzyme used for digestion. (Trypsin is default, None would be best for peptide input or unspecific digestion, for more please refer to your mascot server). (default: 'Trypsin' valid: 'Trypsin', 'Arg-C', 'Asp-N', 'Asp-N_ambic', 'Chymotrypsin', 'CNBr', 'CNBr+Trypsin', 'Formic_acid', 'Lys-C', 'Lys-C/P', 'PepsinA', 'Tryp-CNBr', 'TrypChymo', 'Trypsin/P', 'V8-DE', 'V8-E', 'semiTrypsin', 'LysC+AspN', 'None')"
    missed_cleavages: "Number of allowed missed cleavages (default: '0' min: '0')"
    sig_threshold: "Significance threshold (default: '0.05')"
    pep_homol: "Peptide homology threshold (default: '1')"
    pep_ident: "Peptide ident threshold (default: '1')"
    pep_rank: "Peptide rank (default: '1')"
    prot_score: "Protein score (default: '1')"
    pep_score: "Peptide score (default: '1')"
    pep_exp_z: "Peptide expected charge (default: '1')"
    show_unassigned: "Show_unassigned (default: '1')"
    first_dim_rt: "Additional information which is added to every peptide identification as metavalue if set > 0 (default: '0')"
    boundary: "MIME boundary for mascot output format"
    mass_type: "Mass type (default: 'Monoisotopic' valid: 'Monoisotopic', 'Average')"
    mascot_directory: "The directory in which mascot is located"
    temp_data_directory: "A directory in which some temporary files can be stored"
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