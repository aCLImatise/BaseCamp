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
    Boolean? _forward_use
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
      ~{if (_forward_use) then "-f" else ""}
  >>>
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
    _forward_use: "--forward       Use only the forward strand of the Query sequences\\n-g|maxgap       Set the maximum gap between two adjacent matches in a\\ncluster (default 90)\\n-h\\n--help          Display help information and exit\\n-l|minmatch     Set the minimum length of a single match (default 20)\\n-o\\n--coords        Automatically generate the original NUCmer1.1 coords\\noutput file using the 'show-coords' program\\n--[no]optimize  Toggle alignment score optimization, i.e. if an alignment\\nextension reaches the end of a sequence, it will backtrack\\nto optimize the alignment score instead of terminating the\\nalignment at the end of the sequence (default --optimize)\\n-p|prefix       Set the prefix of the output files (default \\\"out\\\")\\n-r\\n--reverse       Use only the reverse complement of the Query sequences\\n--[no]simplify  Simplify alignments by removing shadowed clusters. Turn\\nthis option off if aligning a sequence to itself to look\\nfor repeats (default --simplify)\\n-V\\n--version       Display the version information and exit\\n"
    reference: "Set the input reference multi-FASTA filename"
    query: "Set the input query multi-FASTA filename"
  }
  output {
    File out_stdout = stdout()
  }
}