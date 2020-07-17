version 1.0

task NetReg {
  input {
    Boolean? arg_filename_design
    Boolean? affinity_matrix_gx
    Boolean? arg_filename_reponse
    Boolean? affinity_matrix_gy
    Boolean? arg_lasso_penalization
    Boolean? arg_penalization_parameter_affinity_matrix_gx
    Boolean? arg_penalization_parameter_affinity_matrix_gy
    Boolean? arg_maximum_number
    Boolean? arg_convergence_threshold_coordinate
    Boolean? arg_filename_output
    Boolean? model_selection
    Boolean? arg_number_crossvalidation
    Boolean? arg_convergence_threshold_bobyqa
    Boolean? arg_maximal_number
  }
  command <<<
    netReg \
      ~{true="-d" false="" arg_filename_design} \
      ~{true="-u" false="" affinity_matrix_gx} \
      ~{true="-r" false="" arg_filename_reponse} \
      ~{true="-v" false="" affinity_matrix_gy} \
      ~{true="-l" false="" arg_lasso_penalization} \
      ~{true="-s" false="" arg_penalization_parameter_affinity_matrix_gx} \
      ~{true="-x" false="" arg_penalization_parameter_affinity_matrix_gy} \
      ~{true="-m" false="" arg_maximum_number} \
      ~{true="-t" false="" arg_convergence_threshold_coordinate} \
      ~{true="-o" false="" arg_filename_output} \
      ~{true="--modelselection" false="" model_selection} \
      ~{true="-n" false="" arg_number_crossvalidation} \
      ~{true="-e" false="" arg_convergence_threshold_bobyqa} \
      ~{true="-b" false="" arg_maximal_number}
  >>>
  parameter_meta {
    arg_filename_design: "[ --design ] arg                  Filename of the design matrix X."
    affinity_matrix_gx: "[ --gx ] arg                      Filename of the affinity matrix GX for  X."
    arg_filename_reponse: "[ --reponse ] arg                 Filename of the reponse matrix Y."
    affinity_matrix_gy: "[ --gy ] arg                      Filename of the affinity matrix GY for  Y."
    arg_lasso_penalization: "[ --lambda ] arg (=1)             LASSO penalization parameter."
    arg_penalization_parameter_affinity_matrix_gx: "[ --psi ] arg (=0)                Penalization parameter for affinity  matrix GX."
    arg_penalization_parameter_affinity_matrix_gy: "[ --xi ] arg (=0)                 Penalization parameter for affinity  matrix GY."
    arg_maximum_number: "[ --maxit ] arg (=100000)         Maximum number of iterations of  coordinate descent. You should choose a  sufficiently large number."
    arg_convergence_threshold_coordinate: "[ --threshold ] arg (=0.0000001)  Convergence threshold for coordinate  descent. Anything below 0.0001 should  suffice."
    arg_filename_output: "[ --outfile ] arg                 Filename of the output file."
    model_selection: "Use modelselection, i.e. estimation of  optimal shrinkage parameters using  crossvalition, before doing the  estimation of coefficients."
    arg_number_crossvalidation: "[ --nfolds ] arg (=10)            The number of cross-validation folds.  This can be maximal the number of rows  of X/Y and minimal 3."
    arg_convergence_threshold_bobyqa: "[ --epsilon ] arg (=0.001)        Convergence threshold for the BOBYQA  algorithm, i.e. the stop criterion for  the model selection."
    arg_maximal_number: "[ --bobit ] arg (=1000)           Maximal number of iterations for the  BOBYQA algorithm."
  }
}