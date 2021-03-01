version 1.0

task Protmapper {
  input {
    Boolean? peptide
    Boolean? no_methionine_offset
    Boolean? no_orthology_mapping
    Boolean? no_isoform_mapping
    String path_input_file
    String path_output_file
  }
  command <<<
    protmapper \
      ~{path_input_file} \
      ~{path_output_file} \
      ~{if (peptide) then "--peptide" else ""} \
      ~{if (no_methionine_offset) then "--no_methionine_offset" else ""} \
      ~{if (no_orthology_mapping) then "--no_orthology_mapping" else ""} \
      ~{if (no_isoform_mapping) then "--no_isoform_mapping" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    peptide: "If given, the third element of each row of the input\\nfile is a peptide (amino acid sequence) rather than a\\nsingle amino acid residue. In this case, peptide-\\noriented mappings are applied. In this mode the\\nfollowing boolean arguments are ignored."
    no_methionine_offset: "If given, will not check for off-by-one errors in site\\nposition (possibly) attributable to site numbering\\nfrom mature proteins after cleavage of the initial\\nmethionine."
    no_orthology_mapping: "If given, will not check sequence positions for known\\nmodification sites in mouse or rat sequences (based on\\nPhosphoSitePlus data)."
    no_isoform_mapping: "If given, will not check sequence positions for known\\nmodifications in other human isoforms of the protein\\n(based on PhosphoSitePlus data).\\n"
    path_input_file: "Path to an input file. The input file is a text file\\nin which each row consists of four comma separated\\nvalues, with the first element being a protein ID, the\\nsecond, the namespace in which that ID is valid\\n(uniprot or hgnc),third, an amino acid represented as\\na single capital letter, and fourth, a site position\\non the protein."
    path_output_file: "Path to the output file to be generated. Each line of\\nthe output file corresponds to a line in the input\\nfile. Each linerepresents a mapped site produced by\\nProtmapper."
  }
  output {
    File out_stdout = stdout()
  }
}