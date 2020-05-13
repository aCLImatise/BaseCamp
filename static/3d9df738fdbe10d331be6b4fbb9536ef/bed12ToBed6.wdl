version 1.0

task Bed12ToBed6 {
  input {
    Boolean nN
    String? bedBedTools
    String? bed12tobed6Bed12tobed6
    String? optionsOptions
  }
  command <<<
    bed12ToBed6 \
      ~{bedBedTools} \
      ~{true="-n" false="" nN} \
      ~{bed12tobed6Bed12tobed6} \
      ~{optionsOptions}
  >>>
}