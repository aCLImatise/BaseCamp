version 1.0

task Refeature {
  input {
    Boolean? simple_bed
    String? discards
    String in_file
  }
  command <<<
    refeature \
      ~{in_file} \
      ~{true="--simplebed" false="" simple_bed} \
      ~{if defined(discards) then ("--discards " +  '"' + discards + '"') else ""}
  >>>
  parameter_meta {
    simple_bed: "(for use with --output bed) Create a separate line for each feature in bed output (by default, all features of a group are described by a single line)."
    discards: "Write any discarded features to specified file."
    in_file: ""
  }
}