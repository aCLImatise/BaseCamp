version 1.0

task MultiplexResolver {
  input {
    File? in
    File? in_blacklist
    File? out
    File? out_conflicts
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MultiplexResolver \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_blacklist) then ("-in_blacklist " +  '"' + in_blacklist + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_conflicts) then ("-out_conflicts " +  '"' + out_conflicts + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*            Peptide multiplets with assigned sequence information (valid formats: 'consensusXML')"
    in_blacklist: "Optional input containing spectral peaks blacklisted during feature detection. Needed for generation of dummy features. (valid formats: 'mzML')"
    out: "*           Complete peptide multiplets. (valid formats: 'consensusXML')"
    out_conflicts: "Optional output containing peptide multiplets without ID annotation or with conflicting quant/ID information. (valid formats: 'consensusXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}