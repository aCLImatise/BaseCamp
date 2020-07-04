version 1.0

task Miranda {
  input {
    Boolean? license
    String? sc
    Boolean? en
    String? scale
    Boolean? strict
    Boolean? go
    Boolean? ge
    File? out
    Boolean? quiet
    String? trim
    Boolean? no_energy
    File? restrict
    Boolean? keyval
    File file_one
    File file_two
    String? options_dot_dot
  }
  command <<<
    miranda \
      ~{file_one} \
      ~{file_two} \
      ~{options_dot_dot} \
      ~{true="--license" false="" license} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{true="-en" false="" en} \
      ~{if defined(scale) then ("-scale " +  '"' + scale + '"') else ""} \
      ~{true="-strict" false="" strict} \
      ~{true="-go" false="" go} \
      ~{true="-ge" false="" ge} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-quiet" false="" quiet} \
      ~{if defined(trim) then ("-trim " +  '"' + trim + '"') else ""} \
      ~{true="-noenergy" false="" no_energy} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{true="-keyval" false="" keyval}
  >>>
  parameter_meta {
    license: "Display license information"
    sc: "Set score threshold to S                [DEFAULT: 140.0]"
    en: "Set energy threshold to -E kcal/mol     [DEFAULT: 1.0]"
    scale: "Set scaling parameter to Z              [DEFAULT: 4.0]"
    strict: "Demand strict 5' seed pairing           [DEFAULT: off]"
    go: "Set gap-open penalty to -X              [DEFAULT: -4.0]"
    ge: "Set gap-extend penalty to -Y            [DEFAULT: -9.0]"
    out: "Output results to file                  [DEFAULT: off]"
    quiet: "Output fewer event notifications        [DEFAULT: off]"
    trim: "Trim reference sequences to T nt        [DEFAULT: off]"
    no_energy: "Do not perform thermodynamics           [DEFAULT: off]"
    restrict: "Restricts scans to those between specific miRNAs and UTRs provided in a pairwise tab-separated file                      [DEFAULT: off]"
    keyval: "Key value pairs ??                      [DEFAULT:]"
    file_one: ""
    file_two: ""
    options_dot_dot: ""
  }
}