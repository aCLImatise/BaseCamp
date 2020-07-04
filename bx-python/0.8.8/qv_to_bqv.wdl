version 1.0

task QvToBqv.py {
  input {
    String qual_file
    String output_file
  }
  command <<<
    qv_to_bqv.py \
      ~{qual_file} \
      ~{output_file}
  >>>
  parameter_meta {
    qual_file: ""
    output_file: ""
  }
}