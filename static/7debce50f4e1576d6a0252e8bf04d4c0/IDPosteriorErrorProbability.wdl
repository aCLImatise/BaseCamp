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
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDPosteriorErrorProbability \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_plot) then ("-out_plot " +  '"' + out_plot + '"') else ""} \
      ~{true="-split_charge" false="" split_charge} \
      ~{true="-top_hits_only" false="" top_hits_only} \
      ~{true="-ignore_bad_data" false="" ignore_bad_data} \
      ~{true="-prob_correct" false="" prob_correct} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
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
}