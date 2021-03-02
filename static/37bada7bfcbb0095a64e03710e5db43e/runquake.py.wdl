version 1.0

task Runquakepy {
  input {
    String parameters
    String are
    String specified
    String in
    String spec_file
  }
  command <<<
    runquake_py \
      ~{parameters} \
      ~{are} \
      ~{specified} \
      ~{in} \
      ~{spec_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parameters: ""
    are: ""
    specified: ""
    in: ""
    spec_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}