version 1.0

task MmseqsConvertmsa {
  input {
    Boolean? identifier_field
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs convertmsa \
      ~{true="--identifier-field" false="" identifier_field} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    identifier_field: "1               Field from STOCKHOLM comments for choosing the MSA identifier: 0: ID, 1: AC. If the respective comment does not exist, the name of the first sequence will become the identifier."
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}