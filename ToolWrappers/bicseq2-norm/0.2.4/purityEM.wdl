version 1.0

task PurityEM {
  input {
    String? output_name_default
    Boolean? print_best_model
    Int? max_it
    Float? epsilon
    Boolean? m_ploidy
    Boolean? max_comp
    Boolean? nrs
    Boolean? subsample
    String var_input
  }
  command <<<
    purityEM \
      ~{var_input} \
      ~{if defined(output_name_default) then ("-o " +  '"' + output_name_default + '"') else ""} \
      ~{if (print_best_model) then "-p" else ""} \
      ~{if defined(max_it) then ("--max_it " +  '"' + max_it + '"') else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if (m_ploidy) then "--mploidy" else ""} \
      ~{if (max_comp) then "--maxComp" else ""} \
      ~{if (nrs) then "--nRS" else ""} \
      ~{if (subsample) then "--subsample" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_name_default: ": the output name; default <stdout>"
    print_best_model: ": print the best model for each ploidy number"
    max_it: ": maximum number of EM iterations; default 100"
    epsilon: ": the convergence criterion; default 1e-6"
    m_ploidy: ": specify a rough upper bound of the ploidy number.\\nA smaller value (e.g. 4) is suggested as a larger value will make the program quite slow"
    max_comp: ": specify the maximum number of component in the mixture of normal model; Default 15\\nthis option will overload the option --mploidy; this is the default method"
    nrs: ": the number of random starting values for the EM algorithm"
    subsample: ": if specified, subsample 10000 observations (if there are more than 10000 observations) for parameter estimation."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}