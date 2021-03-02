version 1.0

task Aodp {
  input {
    Boolean? strings
    File? positions
    Boolean? ranges
    Boolean? fast_a
    Boolean? gff
    Boolean? newick
    Boolean? node_list
    Boolean? lineage
    Boolean? fold
    Boolean? cladogram
    Boolean? time
    File? basename
    File? cluster_list
    File? cluster_oligos
    File? clusters
    Boolean? match
    Boolean? match_output
    Boolean? oligo_size
    Boolean? tree_file
    File? out_group_file
    Boolean? isolation_file
    Boolean? database
    Boolean? taxonomy
    Boolean? ignore_snp
    Boolean? reverse_complement
    Boolean? crowded
    Boolean? first_site_gap
    Boolean? inter_site_gap
    Boolean? ambiguous_sources
    Boolean? threads
    Boolean? max_ambiguities
    Boolean? max_crowded_ambiguities
    Boolean? ambiguous_oligos
    Boolean? max_homo_lo
    Boolean? max_melting
    Boolean? salt
    Boolean? strand
    String cla_do
    String clus
  }
  command <<<
    aodp \
      ~{cla_do} \
      ~{clus} \
      ~{if (strings) then "--strings" else ""} \
      ~{if (positions) then "--positions" else ""} \
      ~{if (ranges) then "--ranges" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (newick) then "--newick" else ""} \
      ~{if (node_list) then "--node-list" else ""} \
      ~{if (lineage) then "--lineage" else ""} \
      ~{if (fold) then "--fold" else ""} \
      ~{if (cladogram) then "--cladogram" else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if (basename) then "--basename" else ""} \
      ~{if (cluster_list) then "--cluster-list" else ""} \
      ~{if (cluster_oligos) then "--cluster-oligos" else ""} \
      ~{if (clusters) then "--clusters" else ""} \
      ~{if (match) then "--match" else ""} \
      ~{if (match_output) then "--match-output" else ""} \
      ~{if (oligo_size) then "--oligo-size" else ""} \
      ~{if (tree_file) then "--tree-file" else ""} \
      ~{if (out_group_file) then "--outgroup-file" else ""} \
      ~{if (isolation_file) then "--isolation-file" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (taxonomy) then "--taxonomy" else ""} \
      ~{if (ignore_snp) then "--ignore-SNP" else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (crowded) then "--crowded" else ""} \
      ~{if (first_site_gap) then "--first-site-gap" else ""} \
      ~{if (inter_site_gap) then "--inter-site-gap" else ""} \
      ~{if (ambiguous_sources) then "--ambiguous-sources" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (max_ambiguities) then "--max-ambiguities" else ""} \
      ~{if (max_crowded_ambiguities) then "--max-crowded-ambiguities" else ""} \
      ~{if (ambiguous_oligos) then "--ambiguous-oligos" else ""} \
      ~{if (max_homo_lo) then "--max-homolo" else ""} \
      ~{if (max_melting) then "--max-melting" else ""} \
      ~{if (salt) then "--salt" else ""} \
      ~{if (strand) then "--strand" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aodp:2.5.0.1--pl526hc9558a2_0"
  }
  parameter_meta {
    strings: "[=file-name]\\nWrites all oligo strings grouped by sequence or group"
    positions: "[=file-name]\\nOutput for Array Designer (tab-separated list of oligo sites)"
    ranges: "[=file-name]\\nAll ranges of sites of oligos grouped by sequence or group"
    fast_a: "[=file-name]\\nAll oligos in FASTA format"
    gff: "[=file-name]\\nAll oligos in GFF format"
    newick: "[=file-name]\\nWrites a phylogeny (Newick tree format), with exactly the same\\nstructure as the input tree, with generated labels for internal\\nnodes.\\nRequires a --tree-file input"
    node_list: "[=file-name]\\nList of sequences for every internal node in the phylogeny\\nRequires a --tree-file input"
    lineage: "[=file-name]\\nLineage of every sequence in the phylogeny\\nRequires a --tree-file input"
    fold: "[=file-name]\\nPredicted secondary structure and calculated two-state melting\\ntemperature for all oligonucleotide signature candidates discarded\\nbecause of higher melting temperature than --max-melting\\nIf the option --max-melting is not specified, will print the\\npredicted secondary structure for all oligonucleotide candidates.\\nMelting temperatures below 0C or over 100C will be indicated as \\\"*\\\"."
    cladogram: "=(file-name)\\nprintout in the eps format of a cladogram associated with the\\nannotated phylogeny tree. All nodes with identified oligos are\\nmarked with a \\\"*\\\" and these nodes and their descendents are coloured\\nred.\\nRequires a --tree-file option and a file-name"
    time: "[=file-name]\\nTab-separated \\\"user\\\", \\\"system\\\", \\\"elapsed\\\" time and maximum memory\\nusage for various phases of processing"
    basename: "=(name)\\nAll oligos in the following formats:\\n* \\\"name.oligo.strings\\\" strings grouped by sequence and/or group\\n* \\\"name.oligo.fasta\\\" FASTA\\n* \\\"name.oligo.gff\\\" GFF\\n* \\\"name.oligo.tab\\\" tab-separated\\n* \\\"name.oligo.positions\\\" positions\\n* \\\"name.oligo.ranges\\\" ranges\\nIf the option --tree-file is specified (phylogeny tree), the\\nfollowing output files will also be generated:\\n* \\\"name.newick\\\" phylogeny tree with labeled internal nodes\\n* \\\"name.node-list\\\" list of sequences for every internal node\\n* \\\"name.lineage\\\" lineage of every sequence in the phylogeny\\n* \\\"name.cladogram.eps\\\" cladogram associated with the annotated\\nphylogeny tree\\nThe output options --strings, --fasta, --gff, --tab, --positions,\\n--ranges --newick, --node-list, --lineage and --cladogram are\\nincompatible with --basename."
    cluster_list: "[=file-name]\\nGenerates the list of clusters: groupings of sequences that can be\\nidentified by at least one oligonucleotide signature (cluster\\noligonucleotide signature).\\nThe output contains the following tab-separated columns:\\n* Numeric identifier of the cluster. This is a generated value.\\n* Space-separated list of all identifiers of sequences contained in\\nthe cluster\\n* If the cluster matches exactly a target node (leaf node or\\ninternal phylogeny node), an additional column with the name of\\nthis node is included"
    cluster_oligos: "[=file-name]\\nGenerates the list of all oligonucleotide signatures for all\\nclusters identified. The output contains the following tab-separated\\ncolumns:\\n* Numeric identifier of the cluster. This matches the value in\\n--cluster-list.\\n* String representation of the cluster oligonucleotide signature"
    clusters: "=(name)\\nGenerates a file of cluster nodes (\\\"name.cluster-list\\\") and a file\\nof cluster oligonucleotide signatures (\\\"name.cluster-oligos\\\")\\nThe output options --cluster-list and --cluster-oligos are\\nincompatible with --clusters."
    match: "=(target-FASTA-file)\\nFinds the closest matching source sequence for each sequence from\\nthe target-FASTA-file. Works as follows:\\n* Build the smallest set of sequences (\\\"minimum-set\\\") that can\\nexplain the largest portion of each target sequence based on\\nmatching cluster oligonucleotide signatures.\\n* Align (using a modified Needleman-Wunsch global alignment\\nalgorithm) each sequence in the \\\"minimum-set\\\" with the target\\nsequence and calculate the percentage similarity. Multiple source\\nsequences may have the same percentage similarity with the target\\nsequence.\\nFor each source sequence with maximum percentage similarity to the\\ntarget sequence, prints to standard output or to the file specified\\nby --match-output the following tab-delimited fields:\\n* Target sequence identifier\\n* Source sequence identifier or - if no matching source sequence was\\nfound\\n* Percentage similarity\\n* Length (bp) of the portion of the target sequence that matches\\nperfectly the source sequence\\n* Length of the target sequence\\n* Size of the \\\"minimum-set\\\" (affects the running time)\\n* Size of the \\\"maximum-set\\\" of sequences contained in any clusters\\nmatched by the target sequence\\nSuggestion: --max-homolo=0 must be specified, otherwise matches\\ncontaining homopolymers will be ignored and the match percentage\\nwill be lowered"
    match_output: "=(output-file)\\nRedirect the output from --match to the output file\\nRequires a --match input"
    oligo_size: "=(size[-size])\\nLook for oligonucleotide signatures of sizes within the specified\\nrange"
    tree_file: "=(relative-file-name)\\nUse the phylogeny file in the Newick tree format that groups the\\nsequences in the input; oligos will also be sought for all nodes in\\nthe phylogeny"
    out_group_file: "=(relative-file-name)\\nThe outgroup list is a case-sensitive list of species (sequence\\nnames) that are to be excluded from the final output. They will\\nstill be used in the generation of oligos, but oligos specific to\\nthem will be omitted.\\nWill terminate with an error if a sequence name in the\\n--outgroup-file is not found in any *fasta-sequence-file*."
    isolation_file: "=(relative-file-name)\\nA list of taxa or sequences to isolate (one item per line).\\nSequences whose name match (case-sensitive) as a complete substring\\nany of the items in the --isolation-file will be the targets of the\\noligo search. Only oligos for sequences that match items on the list\\nor nodes that have sequences that match items on the list will be\\nsought. Individual entries in the --isolation-file may match more\\nthan one sequence. For example, \\\"carotovorum\\\" will match the\\nfollowing sequences:\\n* \\\"Pectobacterium_carotovorum_actinidae\\\"\\n* \\\"Pectobacterium_carotovorum_brasiliense\\\"\\nWill terminate with an error if an item in the --isolation-file does\\nnot match any sequence in any *fasta-sequence-file*."
    database: "=(file)\\nValidate the resulting oligos against a reference database in the\\nFASTA format. This option requires specifying a corresponding\\n--taxonomy option.\\nWill terminate with an error if the database file contains sequence\\nnames that are not specified in the taxonomy file.\\nRequires a --taxonomy input."
    taxonomy: "=(file)\\nTaxonomy information associated with the sequences in the reference\\ndatabase. Each line has tab-separated sequence name and lineage,\\nending in species name (\\\"s__Genus_species_...\\\").\\nThe species name (Genus species) of all input sequences encoded as\\n\\\"XX_9999_Genus_species_...\\\" will be extracted. Oligos for input\\nsequences that don't match any sequence or match only sequences in\\nthe reference database for the same species will be kept\\n(super-specific oligos); sequence oligos that match reference\\nsequences with no species name or with another species name will be\\ndiscarded.\\nOligos for internal nodes (group oligos) that match reference\\nsequences with a species name other than any of the species names in\\nthe group (from the input sequences) will also be discarded.\\nRequires a --database input."
    ignore_snp: "Single polymorphism sites (SNP) will be ignored in the design of\\noligos. --ignore-SNP will generate less oligos in more time"
    reverse_complement: "Will take into account the reverse complement of all sequences\\n(default=no):\\n* SO will also be generated for the reverse complement of each\\nsequence\\n* All generated SO will be validated against all direct and reverse\\ncomplement of all sequences"
    crowded: "=(yes/no)\\nIndicates whether for the --ranges and --positions outputs an oligo\\nrange is populated with intermediary sites (default \\\"no\\\")\\n|<--range with signature oligos-->|\\nmiddle of range\\n=====|================|================|=====  nucleotide sequence\\n*                *                *       --crowded=no\\n* *    *    *    *    *    *    * *       --crowded=yes>\\n|                      |\\n--first-site-gap    --inter-site-gap"
    first_site_gap: "=(gap-size)\\nFor a --crowded display, the size of the gap between the border of\\nthe range and the first interior site (default 5)"
    inter_site_gap: "=(gap-size)\\nFor a --crowded display, indicates the size of the gap between sites\\ninside an oligo range (default 5).\\nThis parameter cannot be set to 0."
    ambiguous_sources: "=(yes/no)\\nWhether sequences containing ambiguities are considered in the\\nanalysis. The names of these sequences will be written to a file\\ncalled excluded.fasta in the current directory; default \\\"yes\\\""
    threads: "=(count)\\nThe maximum number of threads for multiprocessor systems. By\\ndefault, aodp will detect the number of available processors/cores\\n(\\\"n\\\") and will use \\\"n-1\\\" threads, or one thread on single processor\\nsystems."
    max_ambiguities: "=(count)\\nIndicates the maximum number of ambiguous bases (default 5).\\nSequences with more than this number of ambiguous bases will not be\\nincluded in further processing. Their names will be written to a\\nfile called excluded.fasta in the current directory. If this\\nparameter is not specified, no sequences will be filtered out based\\non the number of their ambiguous bases."
    max_crowded_ambiguities: "=(count)\\nIndicates the maximum number of ambiguous bases within an oligo\\nsize. Sequences with more than this number of ambiguous bases\\nanywhere within a window will not be included in further pro\\ncessing. Their names will be written to a file called excluded.fasta\\nin the current directory. If this parameter is not specified, no\\nsequences will be filtered out based on the number of their\\nambiguous bases."
    ambiguous_oligos: "=(yes/no)\\nWhether oligos containing ambiguous bases will be sought in the\\nanalysis; default \\\"no\\\""
    max_homo_lo: "=(size)\\nMaximum length of a homopolymer (e.g. only \\\"A\\\"s) in any oligo;\\ndefault 4; 0 means no oligos with homopolymers will be removed"
    max_melting: "=(temperature-C)\\nMaximum melting temperature (Celsius) for any discovered oligo.\\nOligos with higher melting temperature will be removed from the\\nresult. If this option is not specified, all oligos are reported.\\nThe two-state melting temperature is calculated using the NN model\\n(SantaLucia and Hicks 2004), applied to the most stable\\nsingle-strand self-folding configuration at temperature\\n--max-melting.\\n----------------------------------------------\\n| Tm = DH x ( DS + R x ln ( CT / x )) + 273.15 |\\n----------------------------------------------\\n(SantaLucia and Hicks 2004; eq. 3)\\nUse --salt to specify the salt (NaCl) concentration and --strand to\\nspecify the strand concentration (CT). In melting temperature\\ncalculations for oligonucleotide signatures, x is always 1.\\nSince a given strand may have a number of competing self-folding\\nconfigurations, the actual melting temperature will be consistently\\nlower for multi-state coupled equlibria than the calculated\\ntwo-state melting temperature.\\nThe options --max-melting and --ambiguous-oligos=yes are\\nincompatible."
    salt: "=(Na+ concentration in M)\\nNa+ concentration (default \\\"1M\\\"). Valid values are between \\\"0.05M\\\"\\nand \\\"1.1M\\\"\\nThe Na+ concentration is used in entropy calculations:\\n-----------------------------------------------\\n| DS[Na+] = DS[1M NaCl] x 0.368 x N/2 x ln[Na+] |\\n-----------------------------------------------\\n(SantaLucia and Hicks 2004; eq. 5)\\n\\\"N\\\" is the total number of phosphates in the folded configuration.\\nFor self-folding configurations, \\\"N\\\" is the strand length in\\nnucleotides minus 1."
    strand: "=(single strand concentration in \\\"mM\\\")\\nstrand concentration (default 0.1) in mM used in (SantaLucia and\\nHicks 2004; eq. 3). Valid values are between 0.01 and 100.\\nIn melting temperature calculations for oligonucleotide signatures,\\nx is ALWAYS 1."
    cla_do: "generates an eps file from a phylogeny tree file in a Newick format.\\nNodes that have names ending in \\\"*\\\" are colored red."
    clus: "interprets the results of matches of experimental samples against\\ncluster oligo signatures generated by \\\"aodp\\\""
  }
  output {
    File out_stdout = stdout()
    File out_positions = "${in_positions}"
    File out_basename = "${in_basename}"
    File out_cluster_list = "${in_cluster_list}"
    File out_cluster_oligos = "${in_cluster_oligos}"
    File out_clusters = "${in_clusters}"
    File out_out_group_file = "${in_out_group_file}"
  }
}