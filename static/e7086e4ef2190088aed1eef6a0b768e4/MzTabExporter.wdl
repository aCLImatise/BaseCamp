version 1.0

task MzTabExporter {
  input {
    File? in
    File? out
    String? opt_columns
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MzTabExporter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(opt_columns) then ("-opt_columns " +  '"' + opt_columns + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "Input files used to generate the mzTab file. (valid formats: 'featureXML', 'consensusXML', 'idXML', 'mzid')"
    out: "*         Output file (mzTab) (valid formats: 'mzTab')"
    opt_columns: "Add optional columns which are not part of the mzTab standard. (default: '[subfeatures]' valid: 'subfeatures')"
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