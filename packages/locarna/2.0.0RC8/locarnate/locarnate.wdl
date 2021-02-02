version 1.0

task Locarnate {
  input {
    Boolean? pairwise_parameters
    Boolean? t_coffee_params
    Boolean? pp_calculator_params
    File? path_output_folder
    Boolean? library_only
    Boolean? library_name
    Boolean? additional_libraries
    Boolean? pairwise_aligner
    Boolean? scaling_factor
    String? pp_calculater_params
    String creates
    String alignment
    String or
    String msas
    String exp_a_rnap
    String using
    String different
    String pairwise
    String aligners
    String and
    String t_coffee
    String var_as
    String a
  }
  command <<<
    locarnate \
      ~{creates} \
      ~{alignment} \
      ~{or} \
      ~{msas} \
      ~{exp_a_rnap} \
      ~{using} \
      ~{different} \
      ~{pairwise} \
      ~{aligners} \
      ~{and} \
      ~{t_coffee} \
      ~{var_as} \
      ~{a} \
      ~{if (pairwise_parameters) then "--pairwise_parameters" else ""} \
      ~{if (t_coffee_params) then "--tcoffee_params" else ""} \
      ~{if (pp_calculator_params) then "--pp_calculator_params" else ""} \
      ~{if (path_output_folder) then "--output" else ""} \
      ~{if (library_only) then "--library-only" else ""} \
      ~{if (library_name) then "--library-name" else ""} \
      ~{if (additional_libraries) then "--additional-libraries" else ""} \
      ~{if (pairwise_aligner) then "--pairwise_aligner" else ""} \
      ~{if (scaling_factor) then "--scaling_factor" else ""} \
      ~{if defined(pp_calculater_params) then ("--pp_calculater_params " +  '"' + pp_calculater_params + '"') else ""}
  >>>
  parameter_meta {
    pairwise_parameters: "parameters for the pairwise alignment step"
    t_coffee_params: "parameters for tcoffee"
    pp_calculator_params: "parameters for locarna_rnafold_pp"
    path_output_folder: "path to output folder"
    library_only: "if given only a t-coffee library will be written without actual\\ncomputation"
    library_name: "the file name of the produced t-coffee library (default:\\n\\\"input.lib\\\")"
    additional_libraries: "a comma separated list of paths to t-coffee library files that\\nshould be given to t-coffee in addition to the one generated during\\nthis run"
    pairwise_aligner: "which pairwise aligner to use (default: locarna)"
    scaling_factor: "each edge from each EPM gets the same weight (exparnap only!)"
    pp_calculater_params: ""
    creates: ""
    alignment: ""
    or: ""
    msas: ""
    exp_a_rnap: ""
    using: ""
    different: ""
    pairwise: ""
    aligners: ""
    and: ""
    t_coffee: ""
    var_as: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_folder = "${in_path_output_folder}"
  }
}