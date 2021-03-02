version 1.0

task PegasusioAggregateMatrix {
  input {
    String csv_file
    String output_name
  }
  command <<<
    pegasusio aggregate_matrix \
      ~{csv_file} \
      ~{output_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasusio:0.2.10--py36h4c5857e_0"
  }
  parameter_meta {
    csv_file: ""
    output_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}