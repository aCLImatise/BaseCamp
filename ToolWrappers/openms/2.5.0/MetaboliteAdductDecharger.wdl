version 1.0

task MetaboliteAdductDecharger {
  input {
    File? in
    File? out_cm
    File? out_fm
    File? out_pairs
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MetaboliteAdductDecharger \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out_cm) then ("-out_cm " +  '"' + out_cm + '"') else ""} \
      ~{if defined(out_fm) then ("-out_fm " +  '"' + out_fm + '"') else ""} \
      ~{if defined(out_pairs) then ("-outpairs " +  '"' + out_pairs + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input file  (valid formats: 'featureXML')"
    out_cm: "Output consensus map (valid formats: 'consensusXML')"
    out_fm: "Output feature map (valid formats: 'featureXML')"
    out_pairs: "Output file (valid formats: 'consensusXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out_pairs = "${in_out_pairs}"
  }
}