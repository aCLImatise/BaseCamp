version 1.0

task RNAplfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? shape_conversion
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    Boolean? binaries
    String data_dot
  }
  command <<<
    RNAplfold \
      ~{data_dot} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{true="--binaries" false="" binaries}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    shape_conversion: "+ [optional parameters]"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    binaries: "Output accessibility profiles in binary format .  (default=off)"
    data_dot: "(default=`D')"
  }
}