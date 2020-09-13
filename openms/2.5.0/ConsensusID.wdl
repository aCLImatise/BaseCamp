version 1.0

task ConsensusID {
  input {
    File? in
    File? out
    Int? rt_delta
    Int? mz_delta
    Int? algorithm
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ConsensusID \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(rt_delta) then ("-rt_delta " +  '"' + rt_delta + '"') else ""} \
      ~{if defined(mz_delta) then ("-mz_delta " +  '"' + mz_delta + '"') else ""} \
      ~{if defined(algorithm) then ("-algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                       Input file (valid formats: 'idXML', 'featureXML', 'consensusXML')"
    out: "*                      Output file (valid formats: 'idXML', 'featureXML', 'consensusXML')"
    rt_delta: "[idXML input only] Maximum allowed retention time deviation between identifications belonging to the same spectrum. (default: '0.1' min: '0.0')"
    mz_delta: "[idXML input only] Maximum allowed precursor m/z deviation between identifications belonging to the same spectrum. (default: '0.1' min: '0.0')"
    algorithm: "Algorithm used for consensus scoring.\\n* PEPMatrix: Scoring based on posterior error probabilities (PEPs) and peptide sequence similarities (scored by a substitution matrix). Requires PEPs as scores.\\n* PEPIons: Scoring based on posterior error probabilities (PEPs) and fragment ion similarities ('shared peak count'). Requires PEPs as scores.\\n* best: For each peptide ID, use the best score of any search engine as the consensus score. Requires the same score type in all ID runs.\\n* worst: For each peptide ID, use the worst score of any search engine as the consensus score. Requires the same score type in all ID runs.\\n* average:  For each peptide ID, use the average score of all search engines as the consensus. Requires the same score type in all ID runs.\\n* ranks: Calculates a consensus score based on the ranks of peptide IDs in the results of different search engines. The final score is in the range (0, 1], with 1 being the best score. No requirements about score types. (default: 'PEPMatrix' valid: 'PEPMatrix', 'PEPIons', 'best', 'worst', 'average', 'ranks')"
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