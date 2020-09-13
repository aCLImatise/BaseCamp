version 1.0

task RStructurepy {
  input {
    Boolean? debug
    String? var_exp
    String? ordination_method
    File? r_data
    File? distance_matrix
    File? html
    File? log_file
  }
  command <<<
    r_structure_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var_exp) then ("--varExp " +  '"' + var_exp + '"') else ""} \
      ~{if defined(ordination_method) then ("--ordination-method " +  '"' + ordination_method + '"') else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(distance_matrix) then ("--distance-matrix " +  '"' + distance_matrix + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var_exp: "The experiment variable you want to analyse."
    ordination_method: "The ordination methods. [Default: MDS]"
    r_data: "The path of RData file containing a phyloseq object-\\nthe result of FROGS Phyloseq Import Data"
    distance_matrix: "Path of data file containing beta diversity distance\\nmatrix. These file is the result of FROGS Phyloseq\\nBeta Diversity."
    html: "Path to store resulting html file containing plots.\\n[Default: structure.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}