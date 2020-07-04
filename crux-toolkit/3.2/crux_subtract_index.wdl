version 1.0

task CruxSubtractIndex {
  input {
    String tide_index_one
    String tide_index_two
    String output_index
  }
  command <<<
    crux subtract-index \
      ~{tide_index_one} \
      ~{tide_index_two} \
      ~{output_index}
  >>>
  parameter_meta {
    tide_index_one: ""
    tide_index_two: ""
    output_index: ""
  }
}