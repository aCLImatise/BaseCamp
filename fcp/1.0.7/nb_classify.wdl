version 1.0

task NbClassify {
  input {
    Boolean? contact
    Int? number_fragments_classify
    Int? log_likelihood_top
    Int? level_output_information
    String? extension_add_temporary
    String? q
    String? m
    String? r
  }
  command <<<
    nb-classify \
      ~{true="--contact" false="" contact} \
      ~{if defined(number_fragments_classify) then ("-b " +  '"' + number_fragments_classify + '"') else ""} \
      ~{if defined(log_likelihood_top) then ("-t " +  '"' + log_likelihood_top + '"') else ""} \
      ~{if defined(level_output_information) then ("-v " +  '"' + level_output_information + '"') else ""} \
      ~{if defined(extension_add_temporary) then ("-e " +  '"' + extension_add_temporary + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    contact: "Print contact information."
    number_fragments_classify: "Number of fragments to classify at a time (default = 50000)."
    log_likelihood_top: "Log likelihood of the top T models will be returned. If you wish to have the log likelihood of all models in the results file set T = 0 (default = 0)."
    level_output_information: "Level of output information (default = 1)."
    extension_add_temporary: "Extension to add to temporary files (default = txt)."
    q: ""
    m: ""
    r: ""
  }
}