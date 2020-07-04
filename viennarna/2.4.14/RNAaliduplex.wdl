version 1.0

task RNAaliduplex {
  input {
    Boolean? detailed_help
    String? delta_energy
    Boolean? sorted
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? nsp
    String? param_file
    File file_one_dot_aln
    File file_two_dot_aln
  }
  command <<<
    RNAaliduplex \
      ~{file_one_dot_aln} \
      ~{file_two_dot_aln} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(nsp) then ("--nsp " +  '"' + nsp + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    delta_energy: "Compute suboptimal structures with energy in a certain range of the optimum (kcal/mol). Default is calculation of mfe structure only."
    sorted: "print output sorted by free energy (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    nsp: "Allow other pairs in addition to the usual AU,GC,and GU pairs."
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    file_one_dot_aln: ""
    file_two_dot_aln: ""
  }
}