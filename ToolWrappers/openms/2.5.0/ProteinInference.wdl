version 1.0

task ProteinInference {
  input {
    File? in
    File? out
    String? merge_runs
    File? annotate_in_dist_groups
    Boolean? merging
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ProteinInference \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(merge_runs) then ("-merge_runs " +  '"' + merge_runs + '"') else ""} \
      ~{if defined(annotate_in_dist_groups) then ("-annotate_indist_groups " +  '"' + annotate_in_dist_groups + '"') else ""} \
      ~{if (merging) then "-Merging" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                                               Input file(s) (valid formats: 'idXML')"
    out: "*                                              Output file (valid formats: 'idXML')"
    merge_runs: "If your idXML contains multiple runs, merge them beforehand? (default: 'no' valid: 'no', 'all')"
    annotate_in_dist_groups: "If you want to annotate indistinguishable protein groups, either for reporting or for group based quant. later. Only works with a single ID run in the file. (default: 'true' valid: 'true', 'false')"
    merging: ":annotate_origin <choice>                         If true, adds a map_index MetaValue to the PeptideIDs to annotate the IDRun they came from. (default: 'true' valid: 'true', 'false')"
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