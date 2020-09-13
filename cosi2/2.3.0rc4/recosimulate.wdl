version 1.0

task Recosimulate {
  input {
    String reco_sim
    File parameter_file_name
  }
  command <<<
    recosimulate \
      ~{reco_sim} \
      ~{parameter_file_name}
  >>>
  parameter_meta {
    reco_sim: ""
    parameter_file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}