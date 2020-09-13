version 1.0

task SequenceCoverageCalculator {
  input {
    File? in_database
    File? in_peptides
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SequenceCoverageCalculator \
      ~{if defined(in_database) then ("-in_database " +  '"' + in_database + '"') else ""} \
      ~{if defined(in_peptides) then ("-in_peptides " +  '"' + in_peptides + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in_database: "*  Input file containing the database in FASTA format (valid formats: 'fasta')"
    in_peptides: "*  Input file containing the identified peptides (valid formats: 'idXML')"
    out: "Optional text output file. If left out, the output is written to the command line. (valid formats: 'txt')"
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