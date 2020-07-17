version 1.0

task SEACR1.3.sh {
  input {
    String experimental_bed_graph
  }
  command <<<
    SEACR_1.3.sh \
      ~{experimental_bed_graph}
  >>>
  parameter_meta {
    experimental_bed_graph: ""
  }
}