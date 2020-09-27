version 1.0

task GetEmpiricalDistR {
  input {
    File? input_ref_file
    File? exclusions
    File? label_column_ref
    File? lab_cl_mapping
    Boolean? parallel
    Int? num_iterations
    Int? sample_labs
    Int? num_cores
    File? tmpdir
    File? ontology_graph
    String? semantic_sim_metric
    File? output_path
  }
  command <<<
    get_empirical_dist_R \
      ~{if defined(input_ref_file) then ("--input-ref-file " +  '"' + input_ref_file + '"') else ""} \
      ~{if defined(exclusions) then ("--exclusions " +  '"' + exclusions + '"') else ""} \
      ~{if defined(label_column_ref) then ("--label-column-ref " +  '"' + label_column_ref + '"') else ""} \
      ~{if defined(lab_cl_mapping) then ("--lab-cl-mapping " +  '"' + lab_cl_mapping + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(sample_labs) then ("--sample-labs " +  '"' + sample_labs + '"') else ""} \
      ~{if defined(num_cores) then ("--num-cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(ontology_graph) then ("--ontology-graph " +  '"' + ontology_graph + '"') else ""} \
      ~{if defined(semantic_sim_metric) then ("--semantic-sim-metric " +  '"' + semantic_sim_metric + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    input_ref_file: "Path to file with reference cell types"
    exclusions: "Path to the yaml file with excluded terms. Must contain fields 'unlabelled' and 'trivial_terms'"
    label_column_ref: "Name of the label column in reference file"
    lab_cl_mapping: "Path to serialised object containing cell label to CL terms mapping"
    parallel: "Boolean: Should computation be run in parallel? Default: FALSE"
    num_iterations: "Number of sampling iterations to construct empirical distribution"
    sample_labs: "Labels sample size to infer the distribution from."
    num_cores: "Number of cores to run the process on. Default: all available cores. --parallel must be set to \\\"true\\\" for this to take effect"
    tmpdir: "Cache directory path"
    ontology_graph: "Path to the ontology graph in .obo or .xml format. Import link can also be provided."
    semantic_sim_metric: "Semantic similarity scoring method. Must be supported by Onassis package.\\nSee listSimilarities()$pairwiseMeasures for a list of accepted options\\nObviously must correspond to similarity metric used in other scripts."
    output_path: "Path to the output CDF list object in .rds format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}