version 1.0

task IndelFit {
  input {
    Float? alpha
    Float? beta
    Int? tau
    Boolean? lnl
    Boolean? columns
    File? features
    String? reference
    File? log
    String phyl_of_it_dot
  }
  command <<<
    indelFit \
      ~{phyl_of_it_dot} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if (lnl) then "--lnl" else ""} \
      ~{if (columns) then "--columns" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alpha: "Starting value of alpha, the insertion rate.  Default is 0.02."
    beta: "Starting value of beta, the deletion rate.  Default is 0.04."
    tau: "Starting value of tau, the length parameter.  Default is 0.05."
    lnl: "Compute log likelihood of model only, without optimizing parameters.\\nThe options above can be used to set the parameters as desired."
    columns: "Output log likelihood of each column."
    features: "Estimate separate parameters for each type of feature in the given\\nfile, as well as for background sites."
    reference: "(For use with --features) Name of species (node of tree) defining\\ncoordinate frame of features.  By default, the coordinate frame of\\nthe entire alignment is assumed."
    log: "Write log of optimization to specified file."
    phyl_of_it_dot: "OPTIONS:"
  }
  output {
    File out_stdout = stdout()
  }
}