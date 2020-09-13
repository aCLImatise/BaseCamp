version 1.0

task GenesFromBedpy {
  input {
    String? mode
    String? distance
    File? type
    Int? metric
    String exp_matrix
    File path
  }
  command <<<
    genesFromBed_py \
      ~{exp_matrix} \
      ~{path} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""}
  >>>
  parameter_meta {
    mode: "choose mode"
    distance: "distance from peak to gene"
    type: "type of bed file (<bed>, <THOR>)"
    metric: "metric to merge peaks' scores (mean, max)"
    exp_matrix: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}