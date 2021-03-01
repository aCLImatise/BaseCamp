version 1.0

task QCImporter {
  input {
    File? in
    File? table
    File? mapping
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QCImporter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""} \
      ~{if defined(mapping) then ("-mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "Input qcml file (valid formats: 'qcML')"
    table: "*     The table containing the additional qp values in the columns. First row is considered containing the header. The target run or set names/ids are indicated by column \\\"raw data file\\\", so each row after the header will contain the values of qps for that run. (csv without \\\"!) (valid formats: 'csv')"
    mapping: "*   The mapping of the table header to the according qp cvs, also in csv format. The first row is considered containing the headers as in the table. The second row is considered the according qp cv accessions. (csv without \\\"!) (valid formats: 'csv')"
    out: "*       Output extended qcML file (valid formats: 'qcML')"
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