version 1.0

task RNAheat {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? i_points
    Boolean? noconv
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    String program
  }
  command <<<
    RNAheat \
      ~{program} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(i_points) then ("--ipoints " +  '"' + i_points + '"') else ""} \
      ~{true="--noconv" false="" noconv} \
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
    i_points: "The program fits a parabola to 2*ipoints+1 data  points to calculate 2nd derivatives. Increasing  this parameter produces a smoother curve (default=`2')"
    noconv: "Do not automatically substitude nucleotide \"T\"  with \"U\" (default=off)"
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop hairpins.  Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases  adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices  of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of  using the default parameter set."
    program: "--Tmin=t1              Lowest temperature (default=`0') --Tmax=t2              Highest temperature (default=`100') --stepsize=FLOAT       Calculate partition function every stepsize  degrees C (default=`1.')"
  }
}