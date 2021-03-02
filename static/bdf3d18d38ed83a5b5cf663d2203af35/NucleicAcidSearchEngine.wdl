version 1.0

task NucleicAcidSearchEngine {
  input {
    File? in
    File? database
    File? out
    File? id_out
    File? lf_q_out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    NucleicAcidSearchEngine \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(id_out) then ("-id_out " +  '"' + id_out + '"') else ""} \
      ~{if defined(lf_q_out) then ("-lfq_out " +  '"' + lf_q_out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                  Input file: spectra (valid formats: 'mzML')"
    database: "*                            Input file: sequence database (valid formats: 'fasta')"
    out: "*                                 Output file: mzTab (valid formats: 'mzTab')"
    id_out: "Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')"
    lf_q_out: "Output file: Targets for label-free quantification using FeatureFinderMetaboIdent ('id' input) (valid formats: 'tsv')"
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