version 1.0

task Promer {
  input {
    Boolean? mum
    Boolean? m_umc_and
    Boolean? mum_reference
    Boolean? max_match
    Boolean? breaklen_set_distance
    Boolean? mincluster_sets_length
    Boolean? depend
    Boolean? diagfactor_set_factordefault
    Boolean? maxgap_set_gap
    Boolean? minmatch_set_length
    Boolean? masklen_set_maximum
    File? coords
    Boolean? prefix_set_prefix
    Boolean? matrix_set_number
    String reference
    String query
  }
  command <<<
    promer \
      ~{reference} \
      ~{query} \
      ~{if (mum) then "--mum" else ""} \
      ~{if (m_umc_and) then "--mumcand" else ""} \
      ~{if (mum_reference) then "--mumreference" else ""} \
      ~{if (max_match) then "--maxmatch" else ""} \
      ~{if (breaklen_set_distance) then "-b" else ""} \
      ~{if (mincluster_sets_length) then "-c" else ""} \
      ~{if (depend) then "--depend" else ""} \
      ~{if (diagfactor_set_factordefault) then "-d" else ""} \
      ~{if (maxgap_set_gap) then "-g" else ""} \
      ~{if (minmatch_set_length) then "-l" else ""} \
      ~{if (masklen_set_maximum) then "-m" else ""} \
      ~{if (coords) then "--coords" else ""} \
      ~{if (prefix_set_prefix) then "-p" else ""} \
      ~{if (matrix_set_number) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0"
  }
  parameter_meta {
    mum: "Use anchor matches that are unique in both the reference\\nand query"
    m_umc_and: "Same as --mumreference"
    mum_reference: "Use anchor matches that are unique in in the reference\\nbut not necessarily unique in the query (default behavior)"
    max_match: "Use all anchor matches regardless of their uniqueness"
    breaklen_set_distance: "|breaklen     Set the distance an alignment extension will attempt to\\nextend poor scoring regions before giving up, measured in\\namino acids (default 60)"
    mincluster_sets_length: "|mincluster   Sets the minimum length of a cluster of matches, measured in\\namino acids (default 20)"
    depend: "Print the dependency information and exit"
    diagfactor_set_factordefault: "|diagfactor   Set the clustering diagonal difference separation factor\\n(default .11)"
    maxgap_set_gap: "|maxgap       Set the maximum gap between two adjacent matches in a\\ncluster, measured in amino acids (default 30)"
    minmatch_set_length: "|minmatch     Set the minimum length of a single match, measured in amino\\nacids (default 6)"
    masklen_set_maximum: "|masklen      Set the maximum bookend masking lenth, measured in amino\\nacids (default 8)"
    coords: "Automatically generate the original PROmer1.1 \\\".coords\\\"\\noutput file using the \\\"show-coords\\\" program"
    prefix_set_prefix: "|prefix       Set the prefix of the output files (default \\\"out\\\")"
    matrix_set_number: "|matrix       Set the alignment matrix number to 1 [BLOSUM 45], 2 [BLOSUM\\n62] or 3 [BLOSUM 80] (default 2)\\n"
    reference: "Set the input reference multi-FASTA DNA file"
    query: "Set the input query multi-FASTA DNA file"
  }
  output {
    File out_stdout = stdout()
    File out_coords = "${in_coords}"
  }
}