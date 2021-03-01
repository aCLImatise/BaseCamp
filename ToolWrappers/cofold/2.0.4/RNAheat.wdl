version 1.0

task RNAheat {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Int? tmax
    Float? step_size
    Int? i_points
    Boolean? noconv
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String program
  }
  command <<<
    RNAheat \
      ~{program} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(tmax) then ("--Tmax " +  '"' + tmax + '"') else ""} \
      ~{if defined(step_size) then ("--stepsize " +  '"' + step_size + '"') else ""} \
      ~{if defined(i_points) then ("--ipoints " +  '"' + i_points + '"') else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    tmax: "Highest temperature\\n(default=`100')"
    step_size: "Calculate partition function every stepsize\\ndegrees C\\n(default=`1.')"
    i_points: "The program fits a parabola to 2*ipoints+1 data\\npoints to calculate 2nd derivatives. Increasing\\nthis parameter produces a smoother curve\\n(default=`2')"
    noconv: "Do not automatically substitude nucleotide \\\"T\\\"\\nwith \\\"U\\\"\\n(default=off)"
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop hairpins.\\nMostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs (helices\\nof length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    program: "--Tmin=t1              Lowest temperature\\n(default=`0')"
  }
  output {
    File out_stdout = stdout()
  }
}