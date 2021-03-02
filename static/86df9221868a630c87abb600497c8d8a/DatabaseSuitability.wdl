version 1.0

task DatabaseSuitability {
  input {
    File? in_id
    File? in_spec
    File? in_novo
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    DatabaseSuitability \
      ~{if defined(in_id) then ("-in_id " +  '"' + in_id + '"') else ""} \
      ~{if defined(in_spec) then ("-in_spec " +  '"' + in_spec + '"') else ""} \
      ~{if defined(in_novo) then ("-in_novo " +  '"' + in_novo + '"') else ""} \
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
    in_id: "*     Input idXML file from peptide search with combined database with added de novo peptide. PeptideIndexer is needed, FDR is forbidden. (valid formats: 'idXML')"
    in_spec: "*   Input MzML file used for the peptide identification (valid formats: 'mzML')"
    in_novo: "*   Input idXML file containing de novo peptides (unfiltered) (valid formats: 'idXML')"
    out: "Optional tsv output containing database suitability information as well as spectral quality. (valid formats: 'tsv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}