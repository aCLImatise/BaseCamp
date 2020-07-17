version 1.0

task BedPileUps {
  input {
    Boolean? name
    Boolean? tab
    String? verbose
    String in_dot_bed
  }
  command <<<
    bedPileUps \
      ~{in_dot_bed} \
      ~{true="-name" false="" name} \
      ~{true="-tab" false="" tab} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    name: "- include BED name field 4 when evaluating uniqueness"
    tab: "- use tabs to parse fields"
    verbose: "- show the location and size of each pileUp"
    in_dot_bed: ""
  }
}