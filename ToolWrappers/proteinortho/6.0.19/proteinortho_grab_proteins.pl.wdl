version 1.0

task ProteinorthoGrabProteinspl {
  input {
    Boolean? to_files
    Boolean? enables_regex_matching
    Boolean? exact
    Boolean? source
    String? char_delimiter_is
    String query
    String mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg
    String mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn
  }
  command <<<
    proteinortho_grab_proteins_pl \
      ~{query} \
      ~{mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg} \
      ~{mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn} \
      ~{if (to_files) then "-tofiles" else ""} \
      ~{if (enables_regex_matching) then "-E" else ""} \
      ~{if (exact) then "-exact" else ""} \
      ~{if (source) then "-source" else ""} \
      ~{if defined(char_delimiter_is) then ("-F " +  '"' + char_delimiter_is + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    to_files: "print everything to files instead of stdout files are called OrthoGroup**.fasta for a proteinortho.tsv file"
    enables_regex_matching: "enables regex matching otherwise the string is escaped (e.g. | -> \\|)"
    exact: "search patters are extended with a \\b, that indicates end of word."
    source: "adds the filename (FASTA1,...) to the found gene-name"
    char_delimiter_is: "char delimiter for multiple identifier if QUERY is a string input (default: ',')"
    query: "proteinortho.tsv FILE or search STRING or '-' for STDIN:\\na)      proteinortho output file (.tsv). This uses by default the -exact option.\\nb)      string of one identifier e.g. 'tr|asd3|asd' OR multiple identifier separated by ',' (-F=)"
    mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg: ">BDNF15 Brain derived neurotrophic factor OS=human(...)"
    mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn: "The second hit BDNF15 is reported since it also contains 'BDNF1' as a substring. "
  }
  output {
    File out_stdout = stdout()
  }
}