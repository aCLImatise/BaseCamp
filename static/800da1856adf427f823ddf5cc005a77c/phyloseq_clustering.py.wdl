version 1.0

task PhyloseqClusteringpy {
  input {
    Boolean? debug
    String? var_exp
    File? r_data
    File? distance_matrix
    File? html
    File? log_file
  }
  command <<<
    phyloseq_clustering_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var_exp) then ("--varExp " +  '"' + var_exp + '"') else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(distance_matrix) then ("--distance-matrix " +  '"' + distance_matrix + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var_exp: "The experiment variable you want to analyse."
    r_data: "The path of RData file containing a phyloseq object-\\nthe result of FROGS Phyloseq Import Data"
    distance_matrix: "The path of data file containing beta diversity\\ndistance matrix. These file is the result of FROGS\\nPhyloseq Beta Diversity."
    html: "The HTML file containing the graphs. [Default:\\nphyloseq_clustering.nb.html]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}