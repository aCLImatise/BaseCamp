version 1.0

task Nucmer {
  input {
    Boolean? mum
    Boolean? m_umc_and
    Boolean? mum_reference
    Boolean? max_match
    Boolean? breaklen_set_distance
    Boolean? mincluster_sets_length
    Boolean? depend
    Boolean? diagdiff_set_difference
    Boolean? diagfactor_set_difference
    Boolean? forward
    Boolean? maxgap_set_gap
    Boolean? minmatch_set_length
    File? coords
    Boolean? prefix_set_prefix
    Boolean? reverse
    String reference
    String query
  }
  command <<<
    nucmer \
      ~{reference} \
      ~{query} \
      ~{if (mum) then "--mum" else ""} \
      ~{if (m_umc_and) then "--mumcand" else ""} \
      ~{if (mum_reference) then "--mumreference" else ""} \
      ~{if (max_match) then "--maxmatch" else ""} \
      ~{if (breaklen_set_distance) then "-b" else ""} \
      ~{if (mincluster_sets_length) then "-c" else ""} \
      ~{if (depend) then "--depend" else ""} \
      ~{if (diagdiff_set_difference) then "-D" else ""} \
      ~{if (diagfactor_set_difference) then "-d" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if (maxgap_set_gap) then "-g" else ""} \
      ~{if (minmatch_set_length) then "-l" else ""} \
      ~{if (coords) then "--coords" else ""} \
      ~{if (prefix_set_prefix) then "-p" else ""} \
      ~{if (reverse) then "--reverse" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mum: "Use anchor matches that are unique in both the reference\\nand query"
    m_umc_and: "Same as --mumreference"
    mum_reference: "Use anchor matches that are unique in in the reference\\nbut not necessarily unique in the query (default behavior)"
    max_match: "Use all anchor matches regardless of their uniqueness"
    breaklen_set_distance: "|breaklen     Set the distance an alignment extension will attempt to\\nextend poor scoring regions before giving up (default 200)"
    mincluster_sets_length: "|mincluster   Sets the minimum length of a cluster of matches (default 65)"
    depend: "Print the dependency information and exit"
    diagdiff_set_difference: "|diagdiff     Set the maximum diagonal difference between two adjacent\\nanchors in a cluster (default 5)"
    diagfactor_set_difference: "|diagfactor   Set the maximum diagonal difference between two adjacent\\nanchors in a cluster as a differential fraction of the gap\\nlength (default 0.12)"
    forward: "Use only the forward strand of the Query sequences"
    maxgap_set_gap: "|maxgap       Set the maximum gap between two adjacent matches in a\\ncluster (default 90)"
    minmatch_set_length: "|minmatch     Set the minimum length of a single match (default 20)"
    coords: "Automatically generate the original NUCmer1.1 coords\\noutput file using the 'show-coords' program"
    prefix_set_prefix: "|prefix       Set the prefix of the output files (default \\\"out\\\")"
    reverse: "Use only the reverse complement of the Query sequences"
    reference: "Set the input reference multi-FASTA filename"
    query: "Set the input query multi-FASTA filename"
  }
  output {
    File out_stdout = stdout()
    File out_coords = "${in_coords}"
  }
}