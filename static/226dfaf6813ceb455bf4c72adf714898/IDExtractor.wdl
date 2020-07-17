version 1.0

task IDExtractor {
  input {
    File? in
    File? out
    Int? number_of_peptides
    Int? number_of_rand_in_v_ok_ations
    Boolean? best_hits
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(number_of_peptides) then ("-number_of_peptides " +  '"' + number_of_peptides + '"') else ""} \
      ~{if defined(number_of_rand_in_v_ok_ations) then ("-number_of_rand_invokations " +  '"' + number_of_rand_in_v_ok_ations + '"') else ""} \
      ~{true="-best_hits" false="" best_hits} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                        Input file (valid formats: 'idXML')"
    out: "*                       Output file (valid formats: 'idXML')"
    number_of_peptides: "Number of randomly chosen peptides (default: '10' min: '1')"
    number_of_rand_in_v_ok_ations: "Number of rand invocations before random draw (default: '0' min: '0')"
    best_hits: "If this flag is set the best n peptides are chosen."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}