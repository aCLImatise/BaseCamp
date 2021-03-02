version 1.0

task FidoAdapter {
  input {
    File? in
    File? out
    File? fido_executable
    File? fido_cp_executable
    Boolean? separate_runs
    Boolean? greedy_group_resolution
    Boolean? no_cleanup
    Boolean? all_psms
    Boolean? group_level
    Int? log_two_states
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FidoAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(fido_executable) then ("-fido_executable " +  '"' + fido_executable + '"') else ""} \
      ~{if defined(fido_cp_executable) then ("-fidocp_executable " +  '"' + fido_cp_executable + '"') else ""} \
      ~{if (separate_runs) then "-separate_runs" else ""} \
      ~{if (greedy_group_resolution) then "-greedy_group_resolution" else ""} \
      ~{if (no_cleanup) then "-no_cleanup" else ""} \
      ~{if (all_psms) then "-all_PSMs" else ""} \
      ~{if (group_level) then "-group_level" else ""} \
      ~{if defined(log_two_states) then ("-log2_states " +  '"' + log_two_states + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                 Input: identification results (valid formats: 'idXML')"
    out: "*                Output: identification results with scored/grouped proteins (valid formats: 'idXML')"
    fido_executable: "*    The Fido executable. Provide a full or relative path, or make sure it can be found in your PATH environment."
    fido_cp_executable: "*  The FidoChooseParameters executable. Provide a full or relative path, or make sure it can be found in your PATH environment."
    separate_runs: "Process multiple protein identification runs in the input separately, don't merge them. Merging results in loss of descriptive information of the single protein identification runs."
    greedy_group_resolution: "Post-process Fido output with greedy resolution of shared peptides based on the protein probabilities. Also adds the resolved ambiguity groups to output."
    no_cleanup: "Omit clean-up of peptide sequences (removal of non-letter characters, replacement of I with L)"
    all_psms: "Consider all PSMs of each peptide, instead of only the best one"
    group_level: "Perform inference on protein group level (instead of individual protein level). This will lead to higher probabilities for (bigger) protein groups."
    log_two_states: "Binary logarithm of the max. number of connected states in a subgraph. For a value N, subgraphs that are bigger than 2^N will be split up, sacrificing accuracy for runtime. '0' uses the default (18). (default: '0' min: '0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}