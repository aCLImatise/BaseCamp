version 1.0

task Isocorcli {
  input {
    String? path_metabolites_database
    String? path_derivatives_database
    String? path_isotopes_database
    String? tracer
    String? resolution
    String? mz_of_resolution
    String? resolution_formula_code
    String? tracer_purity
    Boolean? correct_na_tracer
    Boolean? verbose
    String input_data
  }
  command <<<
    isocorcli \
      ~{input_data} \
      ~{if defined(path_metabolites_database) then ("-M " +  '"' + path_metabolites_database + '"') else ""} \
      ~{if defined(path_derivatives_database) then ("-D " +  '"' + path_derivatives_database + '"') else ""} \
      ~{if defined(path_isotopes_database) then ("-I " +  '"' + path_isotopes_database + '"') else ""} \
      ~{if defined(tracer) then ("--tracer " +  '"' + tracer + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(mz_of_resolution) then ("--mz_of_resolution " +  '"' + mz_of_resolution + '"') else ""} \
      ~{if defined(resolution_formula_code) then ("--resolution_formula_code " +  '"' + resolution_formula_code + '"') else ""} \
      ~{if defined(tracer_purity) then ("--tracer_purity " +  '"' + tracer_purity + '"') else ""} \
      ~{true="--correct_NA_tracer" false="" correct_na_tracer} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    path_metabolites_database: "path to metabolites database"
    path_derivatives_database: "path to derivatives database"
    path_isotopes_database: "path to isotopes database"
    tracer: "the isotopic tracer (e.g. \"13C\")"
    resolution: "HR only: resolution of the mass spectrometer (e.g. \"1e4\")"
    mz_of_resolution: "HR only: mz at which resolution is given (e.g. \"400\")"
    resolution_formula_code: "HR only: spectrometer formula code"
    tracer_purity: "purity vector of the tracer"
    correct_na_tracer: "flag to correct tracer natural abundance"
    verbose: "flag to enable verbose logs"
    input_data: "measurements file to process"
  }
}