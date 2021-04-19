version 1.0

task Orsumpy {
  input {
    File? gmt
    File? hierarchy_file
    Boolean? create_hf
    Array[String] files
    Directory? output_folder
    Boolean? rules
    Int? max_rep_size
  }
  command <<<
    orsum_py \
      ~{if defined(gmt) then ("--gmt " +  '"' + gmt + '"') else ""} \
      ~{if defined(hierarchy_file) then ("--hierarchyFile " +  '"' + hierarchy_file + '"') else ""} \
      ~{if (create_hf) then "--createHF" else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if (rules) then "--rules" else ""} \
      ~{if defined(max_rep_size) then ("--maxRepSize " +  '"' + max_rep_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/orsum:1.0.0--hdfd78af_0"
  }
  parameter_meta {
    gmt: "path for the the GMT file"
    hierarchy_file: "path for the hierarchy file"
    create_hf: "Creates the hierarchy file when this is written,\\notherwise tries to read, if absent creates it."
    files: "paths for the enrichment result files"
    output_folder: "paths for the enrichment result files"
    rules: "[RULES ...]   List of ordered numbers of the rules to apply while\\nsummarizing. First rule is numbered 1. It should be\\nrun first."
    max_rep_size: "The maximum size of a representative term. Terms\\nbigger than this will not be discarded but also will\\nnot be used to represent other terms\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}