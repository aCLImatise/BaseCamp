version 1.0

task QCMerger {
  input {
    String? in
    File? out
    String? setname
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QCMerger \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(setname) then ("-setname " +  '"' + setname + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*       List of qcml files to be merged. (valid formats: 'qcML')"
    out: "*       Output extended/reduced qcML file (valid formats: 'qcML')"
    setname: "Use only when all given qcml files belong to one set, which will be held under the given name."
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