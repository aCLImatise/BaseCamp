version 1.0

task RemoveRedundant {
  input {
    Boolean? gff_three
    String polishes_file
  }
  command <<<
    removeRedundant \
      ~{polishes_file} \
      ~{true="-gff3" false="" gff_three}
  >>>
  parameter_meta {
    gff_three: ""
    polishes_file: ""
  }
}