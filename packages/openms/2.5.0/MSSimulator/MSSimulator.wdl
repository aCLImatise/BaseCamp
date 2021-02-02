version 1.0

task MSSimulator {
  input {
    String? in
    File? out
    File? out_pm
    File? out_fm
    File? out_cm
    File? out_lcm
    File? out_cnt_m
    File? out_id
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MSSimulator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_pm) then ("-out_pm " +  '"' + out_pm + '"') else ""} \
      ~{if defined(out_fm) then ("-out_fm " +  '"' + out_fm + '"') else ""} \
      ~{if defined(out_cm) then ("-out_cm " +  '"' + out_cm + '"') else ""} \
      ~{if defined(out_lcm) then ("-out_lcm " +  '"' + out_lcm + '"') else ""} \
      ~{if defined(out_cnt_m) then ("-out_cntm " +  '"' + out_cnt_m + '"') else ""} \
      ~{if defined(out_id) then ("-out_id " +  '"' + out_id + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*       Input protein sequences (valid formats: 'FASTA')"
    out: "Output: simulated MS raw (profile) data (valid formats: 'mzML')"
    out_pm: "Output: ground-truth picked (centroided) MS data (valid formats: 'mzML')"
    out_fm: "Output: ground-truth features (valid formats: 'featureXML')"
    out_cm: "Output: ground-truth features, grouping ESI charge variants of each parent peptide (valid formats: 'consensusXML')"
    out_lcm: "Output: ground-truth features, grouping labeled variants (valid formats: 'consensusXML')"
    out_cnt_m: "Output: ground-truth features caused by contaminants (valid formats: 'featureXML')"
    out_id: "Output: ground-truth MS2 peptide identifications (valid formats: 'idXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}