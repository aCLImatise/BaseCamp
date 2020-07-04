version 1.0

task ProteinorthoGrabProteins.pl {
  input {
    Boolean? to_files
    Boolean? enables_regex_matching
    Boolean? exact
    Boolean? source
    String? char_delimiter_multiple
  }
  command <<<
    proteinortho_grab_proteins.pl \
      ~{true="-tofiles" false="" to_files} \
      ~{true="-E" false="" enables_regex_matching} \
      ~{true="-exact" false="" exact} \
      ~{true="-source" false="" source} \
      ~{if defined(char_delimiter_multiple) then ("-F " +  '"' + char_delimiter_multiple + '"') else ""}
  >>>
  parameter_meta {
    to_files: "print everything to files instead of stdout files are called OrthoGroup**.fasta for a proteinortho.tsv file"
    enables_regex_matching: "enables regex matching otherwise the string is escaped (e.g. | -> \|)"
    exact: "search patters are extended with a \b, that indicates end of word."
    source: "adds the filename (FASTA1,...) to the found gene-name"
    char_delimiter_multiple: "char delimiter for multiple identifier if QUERY is a string input (default: ',')"
  }
}