version 1.0

task Epifany {
  input {
    File? in
    File? out
    String? protein_fdr
    String? greedy_group_resolution
    Float? max_psms_extreme_probability
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    Epifany \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(protein_fdr) then ("-protein_fdr " +  '"' + protein_fdr + '"') else ""} \
      ~{if defined(greedy_group_resolution) then ("-greedy_group_resolution " +  '"' + greedy_group_resolution + '"') else ""} \
      ~{if defined(max_psms_extreme_probability) then ("-max_psms_extreme_probability " +  '"' + max_psms_extreme_probability + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                            Input: identification results (valid formats: 'idXML')"
    out: "*                           Output: identification results with scored/grouped proteins (valid formats: 'idXML')"
    protein_fdr: "Additionally calculate the target-decoy FDR on protein-level based on the posteriors (default: 'false' valid: 'true', 'false')"
    greedy_group_resolution: "Post-process inference output with greedy resolution of shared peptides based on the parent protein probabilities. Also adds the resolved ambiguity groups to output. (default: 'none' valid: 'none', 'remove_associations_only', 'remove_proteins_wo_evidence')"
    max_psms_extreme_probability: "Set PSMs with probability higher than this to this maximum probability. (default: '1.0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}