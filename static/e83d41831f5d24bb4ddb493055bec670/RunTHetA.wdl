version 1.0

task RunTHetA.py {
  input {
    String? graph_format
    Boolean? baf
    String? ratio_dev
    Int? min_frac
    Boolean? no_clustering
    String? tumor_file
    String? normal_file
    String query_file
  }
  command <<<
    RunTHetA.py \
      ~{query_file} \
      ~{if defined(graph_format) then ("--GRAPH_FORMAT " +  '"' + graph_format + '"') else ""} \
      ~{true="--BAF" false="" baf} \
      ~{if defined(ratio_dev) then ("--RATIO_DEV " +  '"' + ratio_dev + '"') else ""} \
      ~{if defined(min_frac) then ("--MIN_FRAC " +  '"' + min_frac + '"') else ""} \
      ~{true="--NO_CLUSTERING" false="" no_clustering} \
      ~{if defined(tumor_file) then ("--TUMOR_FILE " +  '"' + tumor_file + '"') else ""} \
      ~{if defined(normal_file) then ("--NORMAL_FILE " +  '"' + normal_file + '"') else ""}
  >>>
  parameter_meta {
    graph_format: "Options are .pdf, .jpg, .png, .eps"
    baf: "Option to run the BAF model."
    ratio_dev: "The deviation away from 1.0 that a ratio must be to be considered a potential copy number aberration."
    min_frac: "The minimum fraction of the genome that must have a potential copy number aberration to be a valid sample for THetA analysis."
    no_clustering: "Option to run THetA without clustering."
    tumor_file: ""
    normal_file: ""
    query_file: "Interval file"
  }
}