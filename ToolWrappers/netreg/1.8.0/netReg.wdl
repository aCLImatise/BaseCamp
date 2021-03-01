version 1.0

task NetReg {
  input {
    Boolean? arg_filename_design
    Boolean? arg_filename_gx
    Boolean? arg_filename_gy
    Boolean? arg_penalization_parameter_gx
    Boolean? arg_penalization_parameter_affinitymatrix
    Boolean? arg_maximum_number
    Boolean? arg_convergence_threshold_coordinatedescent
    File? arg_filename_output
    Boolean? model_selection
    Boolean? arg_number_foldsthis
    Boolean? arg_convergence_threshold_bobyqaalgorithm
    Boolean? arg_maximal_number
    String x_dot
    String y_dot
  }
  command <<<
    netReg \
      ~{x_dot} \
      ~{y_dot} \
      ~{if (arg_filename_design) then "-d" else ""} \
      ~{if (arg_filename_gx) then "-u" else ""} \
      ~{if (arg_filename_gy) then "-v" else ""} \
      ~{if (arg_penalization_parameter_gx) then "-s" else ""} \
      ~{if (arg_penalization_parameter_affinitymatrix) then "-x" else ""} \
      ~{if (arg_maximum_number) then "-m" else ""} \
      ~{if (arg_convergence_threshold_coordinatedescent) then "-t" else ""} \
      ~{if (arg_filename_output) then "-o" else ""} \
      ~{if (model_selection) then "--modelselection" else ""} \
      ~{if (arg_number_foldsthis) then "-n" else ""} \
      ~{if (arg_convergence_threshold_bobyqaalgorithm) then "-e" else ""} \
      ~{if (arg_maximal_number) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_filename_design: "[ --design ] arg                  Filename of the design matrix X."
    arg_filename_gx: "[ --gx ] arg                      Filename of the affinity matrix GX for"
    arg_filename_gy: "[ --gy ] arg                      Filename of the affinity matrix GY for"
    arg_penalization_parameter_gx: "[ --psi ] arg (=0)                Penalization parameter for affinity\\nmatrix GX."
    arg_penalization_parameter_affinitymatrix: "[ --xi ] arg (=0)                 Penalization parameter for affinity\\nmatrix GY."
    arg_maximum_number: "[ --maxit ] arg (=100000)         Maximum number of iterations of\\ncoordinate descent. You should choose a\\nsufficiently large number."
    arg_convergence_threshold_coordinatedescent: "[ --threshold ] arg (=0.0000001)  Convergence threshold for coordinate\\ndescent. Anything below 0.0001 should\\nsuffice."
    arg_filename_output: "[ --outfile ] arg                 Filename of the output file."
    model_selection: "Use modelselection, i.e. estimation of\\noptimal shrinkage parameters using\\ncrossvalition, before doing the\\nestimation of coefficients."
    arg_number_foldsthis: "[ --nfolds ] arg (=10)            The number of cross-validation folds.\\nThis can be maximal the number of rows\\nof X/Y and minimal 3."
    arg_convergence_threshold_bobyqaalgorithm: "[ --epsilon ] arg (=0.001)        Convergence threshold for the BOBYQA\\nalgorithm, i.e. the stop criterion for\\nthe model selection."
    arg_maximal_number: "[ --bobit ] arg (=1000)           Maximal number of iterations for the\\nBOBYQA algorithm.\\n"
    x_dot: "-r [ --reponse ] arg                 Filename of the reponse matrix Y."
    y_dot: "-l [ --lambda ] arg (=1)             LASSO penalization parameter."
  }
  output {
    File out_stdout = stdout()
    File out_arg_filename_output = "${in_arg_filename_output}"
  }
}