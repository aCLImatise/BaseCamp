version 1.0

task RNAheat {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Int? tmax
    Float? step_size
    Int? i_points
    Boolean? noconv
    Boolean? jobs
    File? in_file
    Boolean? auto_id
    File? id_prefix
    Int? max_bp_span
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Boolean? g_quad
    Boolean? circ
    String program
    String molecule_dot
  }
  command <<<
    RNAheat \
      ~{program} \
      ~{molecule_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(tmax) then ("--Tmax " +  '"' + tmax + '"') else ""} \
      ~{if defined(step_size) then ("--stepsize " +  '"' + step_size + '"') else ""} \
      ~{if defined(i_points) then ("--ipoints " +  '"' + i_points + '"') else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
      ~{if (circ) then "--circ" else ""}
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
    jobs: "[=number]        Split batch input into jobs and start processing\\nin parallel using multiple threads. A value of 0\\nindicates to use as many parallel threads as\\ncomputation cores are available.\\n(default=`0')"
    in_file: "Read a file instead of reading from stdin"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in\\noutput file names)\\n(default=`sequence')"
    max_bp_span: "Set the maximum base pair span\\n(default=`-1')"
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop hairpins.\\nMostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs (helices\\nof length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm.\\n(default=off)"
    circ: "Assume a circular (instead of linear) RNA"
    program: "--Tmin=t1              Lowest temperature\\n(default=`0')"
    molecule_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}