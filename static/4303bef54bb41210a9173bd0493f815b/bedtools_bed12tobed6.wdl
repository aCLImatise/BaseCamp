version 1.0

task BedtoolsBed12tobed6 {
  input {
    Boolean nN
    String? optionsOptions
  }
  command <<<
    bedtools bed12tobed6 \
      ~{optionsOptions} \
      ~{true="-n" false="" nN}
  >>>
}