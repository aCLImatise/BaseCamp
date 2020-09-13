version 1.0

task Nbclassify {
  input {
    Boolean? contact
    Int? number_fragments_classify
    Int? log_likelihood_top
    Int? level_output_information
    String? extension_add_txt
    File? r
    File? m
    File? q
  }
  command <<<
    nb_classify \
      ~{if (contact) then "--contact" else ""} \
      ~{if defined(number_fragments_classify) then ("-b " +  '"' + number_fragments_classify + '"') else ""} \
      ~{if defined(log_likelihood_top) then ("-t " +  '"' + log_likelihood_top + '"') else ""} \
      ~{if defined(level_output_information) then ("-v " +  '"' + level_output_information + '"') else ""} \
      ~{if defined(extension_add_txt) then ("-e " +  '"' + extension_add_txt + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    contact: "Print contact information."
    number_fragments_classify: "Number of fragments to classify at a time (default = 50000)."
    log_likelihood_top: "Log likelihood of the top T models will be returned. If you\\nwish to have the log likelihood of all models in the\\nresults file set T = 0 (default = 0)."
    level_output_information: "Level of output information (default = 1)."
    extension_add_txt: "Extension to add to temporary files (default = txt)."
    r: ""
    m: ""
    q: ""
  }
  output {
    File out_stdout = stdout()
  }
}