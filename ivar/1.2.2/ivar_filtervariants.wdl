version 1.0

task IvarFiltervariants {
  input {
    Boolean? minimum_fration_required
    Boolean? text_file_one
    Boolean? required_prefix_output
  }
  command <<<
    ivar filtervariants \
      ~{true="-t" false="" minimum_fration_required} \
      ~{true="-f" false="" text_file_one} \
      ~{true="-p" false="" required_prefix_output}
  >>>
  parameter_meta {
    minimum_fration_required: "Minimum fration of files required to contain the same variant. Specify value within [0,1]. (Default: 1)"
    text_file_one: "A text file with one variant file per line."
    required_prefix_output: "(Required) Prefix for the output filtered tsv file"
  }
}