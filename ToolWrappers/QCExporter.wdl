version 1.0

task QCExporter {
  input {
    File? in
    String? names
    File? mapping
    File? out_csv
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QCExporter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(names) then ("-names " +  '"' + names + '"') else ""} \
      ~{if defined(mapping) then ("-mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(out_csv) then ("-out_csv " +  '"' + out_csv + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input qcml file (valid formats: 'qcML')"
    names: "The name of the target runs or sets to be exported from. If empty, from all will be exported."
    mapping: "*   The mapping of the exported table's headers to the according qp cvs. The first row is considered containing the headers as for the exported the table. The second row is considered the according qp cv accessions of the qp to be exported. (valid formats: 'csv')"
    out_csv: "*   Output csv formatted quality parameter. (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}