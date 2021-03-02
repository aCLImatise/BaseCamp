version 1.0

task RNApdist {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    String? compare
    Boolean? backtrack
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String bases
  }
  command <<<
    RNApdist \
      ~{bases} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{if (backtrack) then "--backtrack" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    compare: "|m|f|c         Specify the comparison directive.\\n(default=`p')"
    backtrack: "[=<filename>]  Print an \\\"alignment\\\" with gaps of the\\nprofiles. The aligned structures are written\\nto <filename>, if specified.\\n(default=`none')"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "set energy model for treatment of dangling"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    bases: "(possible values=\\\"0\\\", \\\"2\\\" default=`2')"
  }
  output {
    File out_stdout = stdout()
  }
}