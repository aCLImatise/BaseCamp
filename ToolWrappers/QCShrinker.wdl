version 1.0

task QCShrinker {
  input {
    File? in
    String? qp_accessions
    String? name
    File? run
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QCShrinker \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(qp_accessions) then ("-qp_accessions " +  '"' + qp_accessions + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*             Input qcml file (valid formats: 'qcML')"
    qp_accessions: "A list of cv accessions that should be removed. If empty, the usual suspects will be removed!"
    name: "The name of the target run or set that contains the requested quality parameter."
    run: "The file from which the name of the target run that contains the requested quality parameter is taken. This overrides the name parameter! (valid formats: 'mzML')"
    out: "*            Output extended/reduced qcML file (valid formats: 'qcML')"
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