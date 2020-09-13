version 1.0

task IDDecoyProbability {
  input {
    File? in
    File? fwd_in
    File? rev_in
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDDecoyProbability \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(fwd_in) then ("-fwd_in " +  '"' + fwd_in + '"') else ""} \
      ~{if defined(rev_in) then ("-rev_in " +  '"' + rev_in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "Identification input of combined forward decoy search (reindex with PeptideIndexer first) (valid formats: 'idXML')"
    fwd_in: "Identification input of forward run (valid formats: 'idXML')"
    rev_in: "Identification input of decoy run (valid formats: 'idXML')"
    out: "*       Identification output with forward scores converted to probabilities (valid formats: 'idXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}