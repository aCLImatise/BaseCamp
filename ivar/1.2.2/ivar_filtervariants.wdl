version 1.0

task IvarFiltervariants {
  input {
    Boolean? minimum_fration_files
    Boolean? text_file_one
    File? required_prefix_output
  }
  command <<<
    ivar filtervariants \
      ~{if (minimum_fration_files) then "-t" else ""} \
      ~{if (text_file_one) then "-f" else ""} \
      ~{if (required_prefix_output) then "-p" else ""}
  >>>
  parameter_meta {
    minimum_fration_files: "Minimum fration of files required to contain the same variant. Specify value within [0,1]. (Default: 1)"
    text_file_one: "A text file with one variant file per line."
    required_prefix_output: "(Required) Prefix for the output filtered tsv file"
  }
  output {
    File out_stdout = stdout()
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}