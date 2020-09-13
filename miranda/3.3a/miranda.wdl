version 1.0

task Miranda {
  input {
    Boolean? license
    Float? sc
    Boolean? en
    Float? scale
    Boolean? strict
    Boolean? go
    Boolean? ge
    File? out
    Boolean? quiet
    String? trim
    Boolean? no_energy
    File? restrict
    Boolean? keyval
    Int file_one
    Int file_two
    String? options_dot_dot
  }
  command <<<
    miranda \
      ~{file_one} \
      ~{file_two} \
      ~{options_dot_dot} \
      ~{if (license) then "--license" else ""} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{if (en) then "-en" else ""} \
      ~{if defined(scale) then ("-scale " +  '"' + scale + '"') else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if (go) then "-go" else ""} \
      ~{if (ge) then "-ge" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(trim) then ("-trim " +  '"' + trim + '"') else ""} \
      ~{if (no_energy) then "-noenergy" else ""} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{if (keyval) then "-keyval" else ""}
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
    restrict: "Restricts scans to those between\\nspecific miRNAs and UTRs\\nprovided in a pairwise\\ntab-separated file                      [DEFAULT: off]"
    keyval: "Key value pairs ??                      [DEFAULT:]"
    file_one: ""
    file_two: ""
    options_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}