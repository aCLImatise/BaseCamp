version 1.0

task Estpostentropy {
  input {
    Boolean? outfile
    Boolean? name_summarize_eg
    Boolean? credible_interval_calculate
    Boolean? number_discard_burnin
    Boolean? summary_perform_estimates
    Boolean? display_estpostentropy_software
    Int in_file_one_dot_hdf_five
    Int in_file_two_dot_hdf_five
  }
  command <<<
    estpost_entropy \
      ~{in_file_one_dot_hdf_five} \
      ~{in_file_two_dot_hdf_five} \
      ~{if (outfile) then "-o" else ""} \
      ~{if (name_summarize_eg) then "-p" else ""} \
      ~{if (credible_interval_calculate) then "-c" else ""} \
      ~{if (number_discard_burnin) then "-b" else ""} \
      ~{if (summary_perform_estimates) then "-s" else ""} \
      ~{if (display_estpostentropy_software) then "-v" else ""}
  >>>
  parameter_meta {
    outfile: "Outfile [default = postout.txt]"
    name_summarize_eg: "Name of parameter to summarize, e.g., 'q'"
    credible_interval_calculate: "Credible interval to calculate [default = 0.95]"
    number_discard_burnin: "Number of additinal MCMC samples to discard for burn-in [default = 0]"
    summary_perform_estimates: "Which summary to perform: 0 = posterior estimates and credible intervals\\n1 = histogram of posterior samples\\n2 = convert to plain text\\n3 = calculate WAIC\\n4 = MCMC diagnostics"
    display_estpostentropy_software: "Display estpost.entropy software version"
    in_file_one_dot_hdf_five: ""
    in_file_two_dot_hdf_five: ""
  }
  output {
    File out_stdout = stdout()
  }
}