version 1.0

task FalseDiscoveryRate {
  input {
    File? in
    File? out
    String? psm
    String? protein
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FalseDiscoveryRate \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(psm) then ("-PSM " +  '"' + psm + '"') else ""} \
      ~{if defined(protein) then ("-protein " +  '"' + protein + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*              Identifications from searching a target-decoy database. (valid formats: 'idXML')"
    out: "*             Identifications with annotated FDR (valid formats: 'idXML')"
    psm: "Perform FDR calculation on PSM level (default: 'true' valid: 'true', 'false')"
    protein: "Perform FDR calculation on protein level (default: 'true' valid: 'true', 'false')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}