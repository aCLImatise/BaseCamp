version 1.0

task RNPxlSearch {
  input {
    File? in
    File? database
    File? out
    File? out_tsv
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RNPxlSearch \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_tsv) then ("-out_tsv " +  '"' + out_tsv + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                                    Input file  (valid formats: 'mzML')"
    database: "*                              Input file  (valid formats: 'fasta')"
    out: "*                                   Output file  (valid formats: 'idXML')"
    out_tsv: "Tsv output file (valid formats: 'tsv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_tsv = "${in_out_tsv}"
  }
}