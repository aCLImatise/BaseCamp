version 1.0

task PeptideProphetrb {
  input {
    String? output_prefix
    File? replace_output
    File? explicitly_named_output
    Int? threads
    File? database
    Boolean? glyco
    Boolean? maldi
    Float? p_thresh
    Boolean? use_i_cat
    Boolean? phospho
    Boolean? use_pi
    Boolean? user_t
    Boolean? accurate_mass
    Boolean? no_ntt
    Boolean? no_nmc
    Boolean? use_gamma
    Boolean? use_only_expect
    Boolean? force_fit
    Boolean? allow_alt_instruments
    File? one_at_a_time
    String? decoy_prefix
    Boolean? use_non_parametric_model
    Boolean? no_decoy
    String? experiment_label
    Int file_two_dot_pep_dot_xml
  }
  command <<<
    peptide_prophet_rb \
      ~{file_two_dot_pep_dot_xml} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (glyco) then "--glyco" else ""} \
      ~{if (maldi) then "--maldi" else ""} \
      ~{if defined(p_thresh) then ("--p-thresh " +  '"' + p_thresh + '"') else ""} \
      ~{if (use_i_cat) then "--useicat" else ""} \
      ~{if (phospho) then "--phospho" else ""} \
      ~{if (use_pi) then "--usepi" else ""} \
      ~{if (user_t) then "--usert" else ""} \
      ~{if (accurate_mass) then "--accurate-mass" else ""} \
      ~{if (no_ntt) then "--no-ntt" else ""} \
      ~{if (no_nmc) then "--no-nmc" else ""} \
      ~{if (use_gamma) then "--usegamma" else ""} \
      ~{if (use_only_expect) then "--use-only-expect" else ""} \
      ~{if (force_fit) then "--force-fit" else ""} \
      ~{if (allow_alt_instruments) then "--allow-alt-instruments" else ""} \
      ~{if (one_at_a_time) then "--one-ata-time" else ""} \
      ~{if defined(decoy_prefix) then ("--decoy-prefix " +  '"' + decoy_prefix + '"') else ""} \
      ~{if (use_non_parametric_model) then "--use-non-parametric-model" else ""} \
      ~{if (no_decoy) then "--no-decoy" else ""} \
      ~{if defined(experiment_label) then ("--experiment-label " +  '"' + experiment_label + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "A string to prepend to the name of output files"
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    threads: "Number of processing threads to use. Set to 0 to autodetect an appropriate value [1]"
    database: "Specify the database to use for this search. Can be a named protk database or the path to a fasta file [sphuman]"
    glyco: "Expect N-Glycosylation modifications as variable mod in a search or as a parameter when building statistical models [false]"
    maldi: "Run a search on MALDI data [false]"
    p_thresh: "Probability threshold below which PSMs are discarded [0.05]"
    use_i_cat: "Use icat information [false]"
    phospho: "Use phospho information [false]"
    use_pi: "Use pI information [false]"
    user_t: "Use hydrophobicity / RT information [false]"
    accurate_mass: "Use accurate mass binning [false]"
    no_ntt: "Don't use NTT model [false]"
    no_nmc: "Don't use NMC model [false]"
    use_gamma: "Use Gamma distribution to model the negatives [false]"
    use_only_expect: "Only use Expect Score as the discriminant [false]"
    force_fit: "Force fitting of mixture model and bypass checks [false]"
    allow_alt_instruments: "Warning instead of exit with error if instrument types between runs is different [false]"
    one_at_a_time: "Create a separate pproph output file for each analysis [false]"
    decoy_prefix: "Prefix for decoy sequences [decoy]"
    use_non_parametric_model: "Use Non-parametric model, can only be used with decoy option [false]"
    no_decoy: "Don't use decoy sequences to pin down the negative distribution [false]"
    experiment_label: "used to commonly label all spectra belonging to one experiment (required by iProphet)"
    file_two_dot_pep_dot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
    File out_one_at_a_time = "${in_one_at_a_time}"
  }
}