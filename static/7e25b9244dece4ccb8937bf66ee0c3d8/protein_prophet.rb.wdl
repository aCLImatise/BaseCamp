version 1.0

task ProteinProphetrb {
  input {
    String? output_prefix
    File? replace_output
    File? explicitly_named_output
    Boolean? glyco
    Boolean? i_prophet_input
    Boolean? no_occam
    Boolean? group_wts
    Boolean? norm_prot_len
    Boolean? log_prob
    Boolean? conf_em
    Boolean? all_peps
    Boolean? unmapped
    Boolean? instances
    Boolean? delude
    Float? min_prob
    Int? min_indep
    Int file_two_dot_pep_dot_xml
  }
  command <<<
    protein_prophet_rb \
      ~{file_two_dot_pep_dot_xml} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (glyco) then "--glyco" else ""} \
      ~{if (i_prophet_input) then "--iprophet-input" else ""} \
      ~{if (no_occam) then "--no-occam" else ""} \
      ~{if (group_wts) then "--group-wts" else ""} \
      ~{if (norm_prot_len) then "--norm-protlen" else ""} \
      ~{if (log_prob) then "--log-prob" else ""} \
      ~{if (conf_em) then "--confem" else ""} \
      ~{if (all_peps) then "--allpeps" else ""} \
      ~{if (unmapped) then "--unmapped" else ""} \
      ~{if (instances) then "--instances" else ""} \
      ~{if (delude) then "--delude" else ""} \
      ~{if defined(min_prob) then ("--minprob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(min_indep) then ("--minindep " +  '"' + min_indep + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "A string to prepend to the name of output files"
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    glyco: "Expect N-Glycosylation modifications as variable mod in a search or as a parameter when building statistical models [false]"
    i_prophet_input: "Inputs are from iProphet [false]"
    no_occam: "Do not attempt to derive the simplest protein list explaining observed peptides [false]"
    group_wts: "Check peptide's total weight (rather than actual weight) in the Protein Group against the threshold [false]"
    norm_prot_len: "Normalize NSP using Protein Length [false]"
    log_prob: "Use the log of probability in the confidence calculations [false]"
    conf_em: "Use the EM to compute probability given the confidence [false]"
    all_peps: "Consider all possible peptides in the database in the confidence model [false]"
    unmapped: "Report results for unmapped proteins [false]"
    instances: "Use Expected Number of Ion Instances to adjust the peptide probabilities prior to NSP adjustment [false]"
    delude: "Do NOT use peptide degeneracy information when assessing proteins [false]"
    min_prob: "Minimum peptide prophet probability for peptides to be considered [0.05]"
    min_indep: "Minimum percentage of independent peptides required for a protein [0]"
    file_two_dot_pep_dot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}