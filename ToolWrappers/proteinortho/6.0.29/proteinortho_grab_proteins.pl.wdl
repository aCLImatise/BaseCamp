version 1.0

task ProteinorthoGrabProteinspl {
  input {
    Boolean? enables_regex_matching
    Boolean? exact
    Int? cpus
    File? min_prot
    Boolean? source
    String? char_delimiter_is
    Boolean? isoform
    String query
    String mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg
    String mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn
  }
  command <<<
    proteinortho_grab_proteins_pl \
      ~{query} \
      ~{mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg} \
      ~{mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn} \
      ~{if (enables_regex_matching) then "-E" else ""} \
      ~{if (exact) then "-exact" else ""} \
      ~{if defined(cpus) then ("-cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(min_prot) then ("-minprot " +  '"' + min_prot + '"') else ""} \
      ~{if (source) then "-source" else ""} \
      ~{if defined(char_delimiter_is) then ("-F " +  '"' + char_delimiter_is + '"') else ""} \
      ~{if (isoform) then "-isoform" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1"
  }
  parameter_meta {
    enables_regex_matching: "enables regex matching otherwise the string is escaped (e.g. | -> \\|)"
    exact: "search patters are extended with a \\b, that indicates end of word."
    cpus: "the number of parallel open files for reading, this is strictly limited by the I/O bandwith (default:1).\\nfor fast SSD drives, you can increase this to gain speed."
    min_prot: "if you give a proteinortho.tsv file, this filters out groups with less than X proteins (default:0)."
    source: "adds the filename (FASTA1,...) to the found gene-name"
    char_delimiter_is: "char delimiter for multiple identifier if QUERY is a string input (default: ',')"
    isoform: "if you use proteinortho with --isoform option, then you need to set this option here too."
    query: "proteinortho.tsv FILE or search STRING or '-' for STDIN:\\na)      proteinortho output file (.tsv). This uses by default the -exact option.\\nb)      string of one identifier e.g. 'tr|asd3|asd' OR multiple identifier separated by ',' (-F=)"
    mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg: ">BDNF15 Brain derived neurotrophic factor OS=human(...)"
    mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn: "The second hit BDNF15 is reported since it also contains 'BDNF1' as a substring. "
  }
  output {
    File out_stdout = stdout()
    File out_min_prot = "${in_min_prot}"
  }
}