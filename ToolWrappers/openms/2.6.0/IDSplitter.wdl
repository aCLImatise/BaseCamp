version 1.0

task IDSplitter {
  input {
    File? in
    File? out
    File? id_out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDSplitter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(id_out) then ("-id_out " +  '"' + id_out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*        Input file (data annotated with identifications) (valid formats: 'mzML', 'featureXML', 'consensusXML')"
    out: "Output file (data without identifications). Either 'out' or 'id_out' are required. They can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML')"
    id_out: "Output file (identifications). Either 'out' or 'id_out' are required. They can be used together. (valid formats: 'idXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_id_out = "${in_id_out}"
  }
}