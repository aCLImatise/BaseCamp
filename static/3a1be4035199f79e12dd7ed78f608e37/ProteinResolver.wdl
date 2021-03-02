version 1.0

task ProteinResolver {
  input {
    File? fast_a
    Boolean? in
    File? in_path
    File? design
    File? protein_groups
    File? peptide_table
    File? protein_table
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ProteinResolver \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if defined(in_path) then ("-in_path " +  '"' + in_path + '"') else ""} \
      ~{if defined(design) then ("-design " +  '"' + design + '"') else ""} \
      ~{if defined(protein_groups) then ("-protein_groups " +  '"' + protein_groups + '"') else ""} \
      ~{if defined(peptide_table) then ("-peptide_table " +  '"' + peptide_table + '"') else ""} \
      ~{if defined(protein_table) then ("-protein_table " +  '"' + protein_table + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    fast_a: "*                       Input database file (valid formats: 'fasta')"
    in: "<file(s)>                        Input file(s) holding experimental data (valid formats: 'idXML', 'consensusXML')"
    in_path: "Path to idXMLs or consensusXMLs files. Ignored if 'in' is given."
    design: "Text file containing the experimental design. See documentation for specific format requirements (valid formats: 'txt')"
    protein_groups: "Output file. Contains all protein groups (valid formats: 'csv')"
    peptide_table: "Output file. Contains one peptide per line and all proteins which contain that peptide (valid formats: 'csv')"
    protein_table: "Output file. Contains one protein per line (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_protein_groups = "${in_protein_groups}"
    File out_peptide_table = "${in_peptide_table}"
    File out_protein_table = "${in_protein_table}"
  }
}