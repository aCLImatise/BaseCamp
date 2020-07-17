version 1.0

task IndelFit {
  input {
    String? alpha
    String? beta
    String? tau
    Boolean? lnl
    Boolean? columns
    File? features
    String? reference
    File? log
    String in_del_history_d_oti_h
    String tree_dot_nh
  }
  command <<<
    indelFit \
      ~{in_del_history_d_oti_h} \
      ~{tree_dot_nh} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{true="--lnl" false="" lnl} \
      ~{true="--columns" false="" columns} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    alpha: "Starting value of alpha, the insertion rate.  Default is 0.02."
    beta: "Starting value of beta, the deletion rate.  Default is 0.04."
    tau: "Starting value of tau, the length parameter.  Default is 0.05."
    lnl: "Compute log likelihood of model only, without optimizing parameters. The options above can be used to set the parameters as desired."
    columns: "Output log likelihood of each column."
    features: "Estimate separate parameters for each type of feature in the given file, as well as for background sites."
    reference: "(For use with --features) Name of species (node of tree) defining coordinate frame of features.  By default, the coordinate frame of the entire alignment is assumed."
    log: "Write log of optimization to specified file."
    in_del_history_d_oti_h: ""
    tree_dot_nh: ""
  }
}