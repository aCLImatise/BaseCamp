version 1.0

task SpringMccpy {
  input {
    File? input_prediction_file
    File? bio_grid
    String? locations
    String? region_a
    String? region_b
    Int? negative
    String? throughput
    String? experiment
    String? output_png
  }
  command <<<
    spring_mcc_py \
      ~{if defined(input_prediction_file) then ("--input " +  '"' + input_prediction_file + '"') else ""} \
      ~{if defined(bio_grid) then ("--biogrid " +  '"' + bio_grid + '"') else ""} \
      ~{if defined(locations) then ("--locations " +  '"' + locations + '"') else ""} \
      ~{if defined(region_a) then ("--region_a " +  '"' + region_a + '"') else ""} \
      ~{if defined(region_b) then ("--region_b " +  '"' + region_b + '"') else ""} \
      ~{if defined(negative) then ("--negative " +  '"' + negative + '"') else ""} \
      ~{if defined(throughput) then ("--throughput " +  '"' + throughput + '"') else ""} \
      ~{if defined(experiment) then ("--experiment " +  '"' + experiment + '"') else ""} \
      ~{if defined(output_png) then ("--output " +  '"' + output_png + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/springsuite:0.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_prediction_file: "Input prediction file (2-columns)."
    bio_grid: "BioGRID interaction database file"
    locations: "UniProt export table with subcellular locations"
    region_a: "First subcellular location"
    region_b: "Second subcellular location"
    negative: "Negative set (2-columns)"
    throughput: "Throughput (low/high)"
    experiment: "Experiment Title"
    output_png: "Output (png)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}