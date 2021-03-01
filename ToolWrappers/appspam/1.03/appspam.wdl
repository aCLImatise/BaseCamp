version 1.0

task Appspam {
  input {
    Boolean? reference_sequencesfull_path
    Boolean? query_sequencesfull_path
    Boolean? reference_treefile_bifurcating
    File? out_j_place
    Boolean? weight
    Boolean? dont_care
    Boolean? mode
    Boolean? spam_x
    Boolean? unassembled
    Boolean? delimiter
    Boolean? pattern
    Boolean? threads
    Boolean? sampling
    Boolean? read_block_size
    Boolean? threshold
    Boolean? turn_verbose_mode
    Boolean? write_scores
    Boolean? write_histogram
  }
  command <<<
    appspam \
      ~{if (reference_sequencesfull_path) then "-s" else ""} \
      ~{if (query_sequencesfull_path) then "-q" else ""} \
      ~{if (reference_treefile_bifurcating) then "-t" else ""} \
      ~{if (out_j_place) then "--out_jplace" else ""} \
      ~{if (weight) then "--weight" else ""} \
      ~{if (dont_care) then "--dontCare" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (spam_x) then "--spamx" else ""} \
      ~{if (unassembled) then "--unassembled" else ""} \
      ~{if (delimiter) then "--delimiter" else ""} \
      ~{if (pattern) then "--pattern" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (sampling) then "--sampling" else ""} \
      ~{if (read_block_size) then "--readBlockSize" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (turn_verbose_mode) then "-v" else ""} \
      ~{if (write_scores) then "--write-scores" else ""} \
      ~{if (write_histogram) then "--write-histogram" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/appspam:1.03--hc9558a2_0"
  }
  parameter_meta {
    reference_sequencesfull_path: "Reference sequences.\\nFull path to fasta file with references."
    query_sequencesfull_path: "Query sequences.\\nFull path to fasta file with query sequences."
    reference_treefile_bifurcating: "Reference tree.\\nFile of reference tree in newick format.\\n(Rooted, bifurcating tree in newick format.\\nAll leaves must have identical names to reference sequences.)"
    out_j_place: "Path and name to JPlace output file."
    weight: "Weight of pattern."
    dont_care: "Number of don't care positions."
    mode: "Placement-mode.\\nOne of [MINDIST, SPAMCOUNT, LCADIST, LCACOUNT, SPAMX]"
    spam_x: "Threshold when to place at leaves for SPAMX."
    unassembled: "Use unassembled references,\\nsee github repository for more information."
    delimiter: "Delimiter used for unassembled references."
    pattern: "Number of patterns."
    threads: "Number of threads."
    sampling: "Experimental: Samples the spaced word matches."
    read_block_size: "Read block size."
    threshold: "Threshold used for filtering spaced word matches."
    turn_verbose_mode: "Turn on verbose mode with additional\\ninformation printed to std_out."
    write_scores: "Write all query-reference distances to files."
    write_histogram: "Write scores for all spaced word matches to file."
  }
  output {
    File out_stdout = stdout()
    File out_out_j_place = "${in_out_j_place}"
  }
}