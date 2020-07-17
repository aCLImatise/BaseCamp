version 1.0

task RNALfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Int? span
    Boolean? noconv
    Boolean? zscore
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
  }
  command <<<
    RNALfold \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{true="--noconv" false="" noconv} \
      ~{true="--zscore" false="" zscore} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    full_help: "Print help, including hidden options, and exit"
    span: "Set the maximum allowed separation of a base pair  to span. I.e. no pairs (i,j) with j-i>span will  be allowed. (default=`150')"
    noconv: "Do not automatically substitude nucleotide \"T\"  with \"U\" (default=off)"
    zscore: "[=DOUBLE]      Activate z-score computation. An optional argument  may be supplied to set the threshold Due to parsing the commandline parameters a negative value should  be given immediately after \"z\" without spaces  e.g. -z-4.9 (default=`-2')"
    temp: "Rescale energy parameters to a temperature of temp  C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop hairpins.  Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases  adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices  of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of  using the default parameter set."
  }
}