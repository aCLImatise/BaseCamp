version 1.0

task Pairalign {
  input {
    Boolean? aligned
    Boolean? alignments
    Boolean? difference
    Boolean? distances
    Boolean? format
    Boolean? group
    Boolean? jc_distance
    Boolean? matrix
    Boolean? names
    Boolean? proportion_difference
    Boolean? similarity
    Boolean? threads
    Boolean? verbose
    String? arguments
  }
  command <<<
    pairalign \
      ~{arguments} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (alignments) then "--alignments" else ""} \
      ~{if (difference) then "--difference" else ""} \
      ~{if (distances) then "--distances" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (jc_distance) then "--jc_distance" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (proportion_difference) then "--proportion_difference" else ""} \
      ~{if (similarity) then "--similarity" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligned: "input file is already aligned."
    alignments: "output aligned sequences pairwise."
    difference: "output difference between the Jukes-Cantor (JC)\\ndistance and proportion different sites."
    distances: "output proportion different sites, JC distance,\\nand diference between the two."
    format: "[fasta/pairfst]        set the format of the input to fasta or fasta\\nwith sequences pairwise (as output given the -a\\n-n option). If sequences are aligned give the -A\\nswitch."
    group: "this option will cluster sequences that are\\nsimilar and/or find the most inclusive taxa in a\\nhierarchy that are alignable according to MAD\\n(Smith et al. 2009, BMC evol. Biol. 9:37). It\\nneed the taxonomy given after a (the first) | in\\nthe sequence name or in a separate file. Each\\ntaxa in the hierarchy should be separated by a\\nsemicolon, with the highest rank first and then\\nincreasingly nested levels until the lowest\\nknown level for the sequence. The groups that\\ncan be aligned are put in a file with the ending\\n.alignment_groups and printed to the screen\\npreceded by #. Clusters are printed to the\\nscreen after a heading, preceded by ###. To get\\nalignable groups give 'alignment_groups' as\\nextra argument, to cluster give 'cluster', and\\nto do both give 'both'. Cut off value for\\npairwise similarity can be given after colon (:)\\nby cut-off= followed value, e.g. -g both:\\ncut-off=0.97. A file with taxonomy can be given\\nwith taxonomy=. The taxonomy file should have\\nthe taxonomy (as above) first on each row\\nfollowed by a |, and the sequence name with that\\ntaxonomy as a comma (,) and/or space ( )\\nseparated string. The same taxon can be repeated\\nseveral times."
    jc_distance: "output Jukes-Cantor (JC) distance."
    matrix: "output in the form of a space separated\\nleft-upper triangular matrix."
    names: "output sequence names (if outputting alignments\\nthen in fasta format)."
    proportion_difference: "output proportion sites that are different."
    similarity: "output similarity between sequences (1-proportion\\ndifferent)."
    threads: "[number]         set the number of threads additional to the\\ncontrolling thread, e.g. -T 4. The order of\\noutput between pairs are not guaranteed for more\\nthan one thread (default 1)."
    verbose: "get additional output."
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}