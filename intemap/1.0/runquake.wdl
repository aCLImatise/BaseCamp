version 1.0

task Runquake.py {
  input {
    String parameters
    String are
    String specified
    String in
    String spec_file
  }
  command <<<
    runquake.py \
      ~{parameters} \
      ~{are} \
      ~{specified} \
      ~{in} \
      ~{spec_file}
  >>>
  parameter_meta {
    parameters: ""
    are: ""
    specified: ""
    in: ""
    spec_file: ""
  }
}