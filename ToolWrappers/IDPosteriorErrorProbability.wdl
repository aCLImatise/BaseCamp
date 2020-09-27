version 1.0

task IDPosteriorErrorProbability {
  input {
    File? in
    File? out
    File? out_plot
    Boolean? split_charge
    Boolean? top_hits_only
    Boolean? ignore_bad_data
    Boolean? prob_correct
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDPosteriorErrorProbability \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_plot) then ("-out_plot " +  '"' + out_plot + '"') else ""} \
      ~{if (split_charge) then "-split_charge" else ""} \
      ~{if (top_hits_only) then "-top_hits_only" else ""} \
      ~{if (ignore_bad_data) then "-ignore_bad_data" else ""} \
      ~{if (prob_correct) then "-prob_correct" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input file  (valid formats: 'idXML')"
    out: "*       Output file  (valid formats: 'idXML')"
    out_plot: "Txt file (if gnuplot is available, a corresponding PDF will be created as well.) (valid formats: 'txt')"
    split_charge: "The search engine scores are split by charge if this flag is set. Thus, for each charge state a new model will be computed."
    top_hits_only: "If set only the top hits of every PeptideIdentification will be used"
    ignore_bad_data: "If set errors will be written but ignored. Useful for pipelines with many datasets where only a few are bad, but the pipeline should run through."
    prob_correct: "If set scores will be calculated as '1 - ErrorProbabilities' and can be interpreted as probabilities for correct identifications."
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