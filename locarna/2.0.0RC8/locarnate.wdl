version 1.0

task Locarnate {
  input {
    Boolean? pairwise_parameters
    Boolean? t_coffee_params
    Boolean? pp_calculator_params
    Boolean? path_output_folder
    Boolean? library_only
    Boolean? library_name
    Boolean? additional_libraries
    Boolean? pairwise_aligner
    Boolean? scaling_factor
  }
  command <<<
    locarnate \
      ~{true="--pairwise_parameters" false="" pairwise_parameters} \
      ~{true="--tcoffee_params" false="" t_coffee_params} \
      ~{true="--pp_calculator_params" false="" pp_calculator_params} \
      ~{true="--output" false="" path_output_folder} \
      ~{true="--library-only" false="" library_only} \
      ~{true="--library-name" false="" library_name} \
      ~{true="--additional-libraries" false="" additional_libraries} \
      ~{true="--pairwise_aligner" false="" pairwise_aligner} \
      ~{true="--scaling_factor" false="" scaling_factor}
  >>>
  parameter_meta {
    pairwise_parameters: "parameters for the pairwise alignment step"
    t_coffee_params: "parameters for tcoffee"
    pp_calculator_params: "parameters for locarna_rnafold_pp"
    path_output_folder: "path to output folder"
    library_only: "if given only a t-coffee library will be written without actual computation"
    library_name: "the file name of the produced t-coffee library (default: \"input.lib\")"
    additional_libraries: "a comma separated list of paths to t-coffee library files that should be given to t-coffee in addition to the one generated during this run"
    pairwise_aligner: "which pairwise aligner to use (default: locarna)"
    scaling_factor: "each edge from each EPM gets the same weight (exparnap only!)"
  }
}