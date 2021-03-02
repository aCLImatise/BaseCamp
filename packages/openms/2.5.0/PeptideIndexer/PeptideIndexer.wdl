version 1.0

task PeptideIndexer {
  input {
    File? in
    File? fast_a
    File? out
    String? decoy_string
    String? decoy_string_position
    String? missing_decoy_action
    Boolean? write_protein_sequence
    Boolean? write_protein_description
    Boolean? keep_unreferenced_proteins
    Boolean? allow_unmatched
    Int? aaa_max
    Int? mismatches_max
    Boolean? il_equivalent
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PeptideIndexer \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(decoy_string) then ("-decoy_string " +  '"' + decoy_string + '"') else ""} \
      ~{if defined(decoy_string_position) then ("-decoy_string_position " +  '"' + decoy_string_position + '"') else ""} \
      ~{if defined(missing_decoy_action) then ("-missing_decoy_action " +  '"' + missing_decoy_action + '"') else ""} \
      ~{if (write_protein_sequence) then "-write_protein_sequence" else ""} \
      ~{if (write_protein_description) then "-write_protein_description" else ""} \
      ~{if (keep_unreferenced_proteins) then "-keep_unreferenced_proteins" else ""} \
      ~{if (allow_unmatched) then "-allow_unmatched" else ""} \
      ~{if defined(aaa_max) then ("-aaa_max " +  '"' + aaa_max + '"') else ""} \
      ~{if defined(mismatches_max) then ("-mismatches_max " +  '"' + mismatches_max + '"') else ""} \
      ~{if (il_equivalent) then "-IL_equivalent" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                      Input idXML file containing the identifications. (valid formats: 'idXML')"
    fast_a: "*                   Input sequence database in FASTA format. Non-existing relative filenames are looked up via 'OpenMS.ini:id_db_dir' (valid formats: 'fasta')"
    out: "*                     Output idXML file. (valid formats: 'idXML')"
    decoy_string: "String that was appended (or prefixed - see 'decoy_string_position' flag below) to the accessions in the protein database to indicate decoy proteins. If empty (default), it's determined automatically (checking for common terms, both as prefix and suffix)."
    decoy_string_position: "Is the 'decoy_string' prepended (prefix) or appended (suffix) to the protein accession? (ignored if decoy_string is empty) (default: 'prefix' valid: 'prefix', 'suffix')"
    missing_decoy_action: "Action to take if NO peptide was assigned to a decoy protein (which indicates wrong database or decoy string): 'error' (exit with error, no output), 'warn' (exit with success, warning message), 'silent' (no action is taken, not even a warning) (default: 'error' valid: 'error', 'warn', 'silent')"
    write_protein_sequence: "If set, the protein sequences are stored as well."
    write_protein_description: "If set, the protein description is stored as well."
    keep_unreferenced_proteins: "If set, protein hits which are not referenced by any peptide are kept."
    allow_unmatched: "If set, unmatched peptide sequences are allowed. By default (i.e. if this flag is not set) the program terminates with an error on unmatched peptides."
    aaa_max: "Maximal number of ambiguous amino acids (AAAs) allowed when matching to a protein database with AAAs. AAAs are B, J, Z and X! (default: '3' min: '0' max: '10')"
    mismatches_max: "Maximal number of mismatched (mm) amino acids allowed when matching to a protein database. The required runtime is exponential in the number of mm's; apply with care. MM's are allowed in addition to AAA's. (default: '0' min: '0' max: '10')"
    il_equivalent: "Treat the isobaric amino acids isoleucine ('I') and leucine ('L') as equivalent (indistinguishable). Also occurences of 'J' will be treated as 'I' thus avoiding ambiguous matching."
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