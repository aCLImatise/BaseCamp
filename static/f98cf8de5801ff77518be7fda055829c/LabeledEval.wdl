version 1.0

task LabeledEval {
  input {
    File? in
    File? truth
    Float? rt_to_l
    Float? mz_to_l
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    LabeledEval \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(truth) then ("-truth " +  '"' + truth + '"') else ""} \
      ~{if defined(rt_to_l) then ("-rt_tol " +  '"' + rt_to_l + '"') else ""} \
      ~{if defined(mz_to_l) then ("-mz_tol " +  '"' + mz_to_l + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Feature result file (valid formats: 'featureXML')"
    truth: "*     Expected result file. (valid formats: 'consensusXML')"
    rt_to_l: "Maximum allowed retention time deviation (default: '20.0')"
    mz_to_l: "Maximum allowed m/z deviation (divided by charge) (default: '0.25')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}