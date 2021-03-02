class: CommandLineTool
id: aodp.cwl
inputs:
- id: in_strings
  doc: "[=file-name]\nWrites all oligo strings grouped by sequence or group"
  type: boolean?
  inputBinding:
    prefix: --strings
- id: in_positions
  doc: "[=file-name]\nOutput for Array Designer (tab-separated list of oligo sites)"
  type: File?
  inputBinding:
    prefix: --positions
- id: in_ranges
  doc: "[=file-name]\nAll ranges of sites of oligos grouped by sequence or group"
  type: boolean?
  inputBinding:
    prefix: --ranges
- id: in_fast_a
  doc: "[=file-name]\nAll oligos in FASTA format"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_gff
  doc: "[=file-name]\nAll oligos in GFF format"
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_newick
  doc: "[=file-name]\nWrites a phylogeny (Newick tree format), with exactly the same\n\
    structure as the input tree, with generated labels for internal\nnodes.\nRequires\
    \ a --tree-file input"
  type: boolean?
  inputBinding:
    prefix: --newick
- id: in_node_list
  doc: "[=file-name]\nList of sequences for every internal node in the phylogeny\n\
    Requires a --tree-file input"
  type: boolean?
  inputBinding:
    prefix: --node-list
- id: in_lineage
  doc: "[=file-name]\nLineage of every sequence in the phylogeny\nRequires a --tree-file\
    \ input"
  type: boolean?
  inputBinding:
    prefix: --lineage
- id: in_fold
  doc: "[=file-name]\nPredicted secondary structure and calculated two-state melting\n\
    temperature for all oligonucleotide signature candidates discarded\nbecause of\
    \ higher melting temperature than --max-melting\nIf the option --max-melting is\
    \ not specified, will print the\npredicted secondary structure for all oligonucleotide\
    \ candidates.\nMelting temperatures below 0C or over 100C will be indicated as\
    \ \"*\"."
  type: boolean?
  inputBinding:
    prefix: --fold
- id: in_cladogram
  doc: "=(file-name)\nprintout in the eps format of a cladogram associated with the\n\
    annotated phylogeny tree. All nodes with identified oligos are\nmarked with a\
    \ \"*\" and these nodes and their descendents are coloured\nred.\nRequires a --tree-file\
    \ option and a file-name"
  type: boolean?
  inputBinding:
    prefix: --cladogram
- id: in_time
  doc: "[=file-name]\nTab-separated \"user\", \"system\", \"elapsed\" time and maximum\
    \ memory\nusage for various phases of processing"
  type: boolean?
  inputBinding:
    prefix: --time
- id: in_basename
  doc: "=(name)\nAll oligos in the following formats:\n* \"name.oligo.strings\" strings\
    \ grouped by sequence and/or group\n* \"name.oligo.fasta\" FASTA\n* \"name.oligo.gff\"\
    \ GFF\n* \"name.oligo.tab\" tab-separated\n* \"name.oligo.positions\" positions\n\
    * \"name.oligo.ranges\" ranges\nIf the option --tree-file is specified (phylogeny\
    \ tree), the\nfollowing output files will also be generated:\n* \"name.newick\"\
    \ phylogeny tree with labeled internal nodes\n* \"name.node-list\" list of sequences\
    \ for every internal node\n* \"name.lineage\" lineage of every sequence in the\
    \ phylogeny\n* \"name.cladogram.eps\" cladogram associated with the annotated\n\
    phylogeny tree\nThe output options --strings, --fasta, --gff, --tab, --positions,\n\
    --ranges --newick, --node-list, --lineage and --cladogram are\nincompatible with\
    \ --basename."
  type: File?
  inputBinding:
    prefix: --basename
- id: in_cluster_list
  doc: "[=file-name]\nGenerates the list of clusters: groupings of sequences that\
    \ can be\nidentified by at least one oligonucleotide signature (cluster\noligonucleotide\
    \ signature).\nThe output contains the following tab-separated columns:\n* Numeric\
    \ identifier of the cluster. This is a generated value.\n* Space-separated list\
    \ of all identifiers of sequences contained in\nthe cluster\n* If the cluster\
    \ matches exactly a target node (leaf node or\ninternal phylogeny node), an additional\
    \ column with the name of\nthis node is included"
  type: File?
  inputBinding:
    prefix: --cluster-list
- id: in_cluster_oligos
  doc: "[=file-name]\nGenerates the list of all oligonucleotide signatures for all\n\
    clusters identified. The output contains the following tab-separated\ncolumns:\n\
    * Numeric identifier of the cluster. This matches the value in\n--cluster-list.\n\
    * String representation of the cluster oligonucleotide signature"
  type: File?
  inputBinding:
    prefix: --cluster-oligos
- id: in_clusters
  doc: "=(name)\nGenerates a file of cluster nodes (\"name.cluster-list\") and a file\n\
    of cluster oligonucleotide signatures (\"name.cluster-oligos\")\nThe output options\
    \ --cluster-list and --cluster-oligos are\nincompatible with --clusters."
  type: File?
  inputBinding:
    prefix: --clusters
- id: in_match
  doc: "=(target-FASTA-file)\nFinds the closest matching source sequence for each\
    \ sequence from\nthe target-FASTA-file. Works as follows:\n* Build the smallest\
    \ set of sequences (\"minimum-set\") that can\nexplain the largest portion of\
    \ each target sequence based on\nmatching cluster oligonucleotide signatures.\n\
    * Align (using a modified Needleman-Wunsch global alignment\nalgorithm) each sequence\
    \ in the \"minimum-set\" with the target\nsequence and calculate the percentage\
    \ similarity. Multiple source\nsequences may have the same percentage similarity\
    \ with the target\nsequence.\nFor each source sequence with maximum percentage\
    \ similarity to the\ntarget sequence, prints to standard output or to the file\
    \ specified\nby --match-output the following tab-delimited fields:\n* Target sequence\
    \ identifier\n* Source sequence identifier or - if no matching source sequence\
    \ was\nfound\n* Percentage similarity\n* Length (bp) of the portion of the target\
    \ sequence that matches\nperfectly the source sequence\n* Length of the target\
    \ sequence\n* Size of the \"minimum-set\" (affects the running time)\n* Size of\
    \ the \"maximum-set\" of sequences contained in any clusters\nmatched by the target\
    \ sequence\nSuggestion: --max-homolo=0 must be specified, otherwise matches\n\
    containing homopolymers will be ignored and the match percentage\nwill be lowered"
  type: boolean?
  inputBinding:
    prefix: --match
- id: in_match_output
  doc: "=(output-file)\nRedirect the output from --match to the output file\nRequires\
    \ a --match input"
  type: boolean?
  inputBinding:
    prefix: --match-output
- id: in_oligo_size
  doc: "=(size[-size])\nLook for oligonucleotide signatures of sizes within the specified\n\
    range"
  type: boolean?
  inputBinding:
    prefix: --oligo-size
- id: in_tree_file
  doc: "=(relative-file-name)\nUse the phylogeny file in the Newick tree format that\
    \ groups the\nsequences in the input; oligos will also be sought for all nodes\
    \ in\nthe phylogeny"
  type: boolean?
  inputBinding:
    prefix: --tree-file
- id: in_out_group_file
  doc: "=(relative-file-name)\nThe outgroup list is a case-sensitive list of species\
    \ (sequence\nnames) that are to be excluded from the final output. They will\n\
    still be used in the generation of oligos, but oligos specific to\nthem will be\
    \ omitted.\nWill terminate with an error if a sequence name in the\n--outgroup-file\
    \ is not found in any *fasta-sequence-file*."
  type: File?
  inputBinding:
    prefix: --outgroup-file
- id: in_isolation_file
  doc: "=(relative-file-name)\nA list of taxa or sequences to isolate (one item per\
    \ line).\nSequences whose name match (case-sensitive) as a complete substring\n\
    any of the items in the --isolation-file will be the targets of the\noligo search.\
    \ Only oligos for sequences that match items on the list\nor nodes that have sequences\
    \ that match items on the list will be\nsought. Individual entries in the --isolation-file\
    \ may match more\nthan one sequence. For example, \"carotovorum\" will match the\n\
    following sequences:\n* \"Pectobacterium_carotovorum_actinidae\"\n* \"Pectobacterium_carotovorum_brasiliense\"\
    \nWill terminate with an error if an item in the --isolation-file does\nnot match\
    \ any sequence in any *fasta-sequence-file*."
  type: boolean?
  inputBinding:
    prefix: --isolation-file
- id: in_database
  doc: "=(file)\nValidate the resulting oligos against a reference database in the\n\
    FASTA format. This option requires specifying a corresponding\n--taxonomy option.\n\
    Will terminate with an error if the database file contains sequence\nnames that\
    \ are not specified in the taxonomy file.\nRequires a --taxonomy input."
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_taxonomy
  doc: "=(file)\nTaxonomy information associated with the sequences in the reference\n\
    database. Each line has tab-separated sequence name and lineage,\nending in species\
    \ name (\"s__Genus_species_...\").\nThe species name (Genus species) of all input\
    \ sequences encoded as\n\"XX_9999_Genus_species_...\" will be extracted. Oligos\
    \ for input\nsequences that don't match any sequence or match only sequences in\n\
    the reference database for the same species will be kept\n(super-specific oligos);\
    \ sequence oligos that match reference\nsequences with no species name or with\
    \ another species name will be\ndiscarded.\nOligos for internal nodes (group oligos)\
    \ that match reference\nsequences with a species name other than any of the species\
    \ names in\nthe group (from the input sequences) will also be discarded.\nRequires\
    \ a --database input."
  type: boolean?
  inputBinding:
    prefix: --taxonomy
- id: in_ignore_snp
  doc: "Single polymorphism sites (SNP) will be ignored in the design of\noligos.\
    \ --ignore-SNP will generate less oligos in more time"
  type: boolean?
  inputBinding:
    prefix: --ignore-SNP
- id: in_reverse_complement
  doc: "Will take into account the reverse complement of all sequences\n(default=no):\n\
    * SO will also be generated for the reverse complement of each\nsequence\n* All\
    \ generated SO will be validated against all direct and reverse\ncomplement of\
    \ all sequences"
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_crowded
  doc: "=(yes/no)\nIndicates whether for the --ranges and --positions outputs an oligo\n\
    range is populated with intermediary sites (default \"no\")\n|<--range with signature\
    \ oligos-->|\nmiddle of range\n=====|================|================|===== \
    \ nucleotide sequence\n*                *                *       --crowded=no\n\
    * *    *    *    *    *    *    * *       --crowded=yes>\n|                  \
    \    |\n--first-site-gap    --inter-site-gap"
  type: boolean?
  inputBinding:
    prefix: --crowded
- id: in_first_site_gap
  doc: "=(gap-size)\nFor a --crowded display, the size of the gap between the border\
    \ of\nthe range and the first interior site (default 5)"
  type: boolean?
  inputBinding:
    prefix: --first-site-gap
- id: in_inter_site_gap
  doc: "=(gap-size)\nFor a --crowded display, indicates the size of the gap between\
    \ sites\ninside an oligo range (default 5).\nThis parameter cannot be set to 0."
  type: boolean?
  inputBinding:
    prefix: --inter-site-gap
- id: in_ambiguous_sources
  doc: "=(yes/no)\nWhether sequences containing ambiguities are considered in the\n\
    analysis. The names of these sequences will be written to a file\ncalled excluded.fasta\
    \ in the current directory; default \"yes\""
  type: boolean?
  inputBinding:
    prefix: --ambiguous-sources
- id: in_threads
  doc: "=(count)\nThe maximum number of threads for multiprocessor systems. By\ndefault,\
    \ aodp will detect the number of available processors/cores\n(\"n\") and will\
    \ use \"n-1\" threads, or one thread on single processor\nsystems."
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_max_ambiguities
  doc: "=(count)\nIndicates the maximum number of ambiguous bases (default 5).\nSequences\
    \ with more than this number of ambiguous bases will not be\nincluded in further\
    \ processing. Their names will be written to a\nfile called excluded.fasta in\
    \ the current directory. If this\nparameter is not specified, no sequences will\
    \ be filtered out based\non the number of their ambiguous bases."
  type: boolean?
  inputBinding:
    prefix: --max-ambiguities
- id: in_max_crowded_ambiguities
  doc: "=(count)\nIndicates the maximum number of ambiguous bases within an oligo\n\
    size. Sequences with more than this number of ambiguous bases\nanywhere within\
    \ a window will not be included in further pro\ncessing. Their names will be written\
    \ to a file called excluded.fasta\nin the current directory. If this parameter\
    \ is not specified, no\nsequences will be filtered out based on the number of\
    \ their\nambiguous bases."
  type: boolean?
  inputBinding:
    prefix: --max-crowded-ambiguities
- id: in_ambiguous_oligos
  doc: "=(yes/no)\nWhether oligos containing ambiguous bases will be sought in the\n\
    analysis; default \"no\""
  type: boolean?
  inputBinding:
    prefix: --ambiguous-oligos
- id: in_max_homo_lo
  doc: "=(size)\nMaximum length of a homopolymer (e.g. only \"A\"s) in any oligo;\n\
    default 4; 0 means no oligos with homopolymers will be removed"
  type: boolean?
  inputBinding:
    prefix: --max-homolo
- id: in_max_melting
  doc: "=(temperature-C)\nMaximum melting temperature (Celsius) for any discovered\
    \ oligo.\nOligos with higher melting temperature will be removed from the\nresult.\
    \ If this option is not specified, all oligos are reported.\nThe two-state melting\
    \ temperature is calculated using the NN model\n(SantaLucia and Hicks 2004), applied\
    \ to the most stable\nsingle-strand self-folding configuration at temperature\n\
    --max-melting.\n----------------------------------------------\n| Tm = DH x (\
    \ DS + R x ln ( CT / x )) + 273.15 |\n----------------------------------------------\n\
    (SantaLucia and Hicks 2004; eq. 3)\nUse --salt to specify the salt (NaCl) concentration\
    \ and --strand to\nspecify the strand concentration (CT). In melting temperature\n\
    calculations for oligonucleotide signatures, x is always 1.\nSince a given strand\
    \ may have a number of competing self-folding\nconfigurations, the actual melting\
    \ temperature will be consistently\nlower for multi-state coupled equlibria than\
    \ the calculated\ntwo-state melting temperature.\nThe options --max-melting and\
    \ --ambiguous-oligos=yes are\nincompatible."
  type: boolean?
  inputBinding:
    prefix: --max-melting
- id: in_salt
  doc: "=(Na+ concentration in M)\nNa+ concentration (default \"1M\"). Valid values\
    \ are between \"0.05M\"\nand \"1.1M\"\nThe Na+ concentration is used in entropy\
    \ calculations:\n-----------------------------------------------\n| DS[Na+] =\
    \ DS[1M NaCl] x 0.368 x N/2 x ln[Na+] |\n-----------------------------------------------\n\
    (SantaLucia and Hicks 2004; eq. 5)\n\"N\" is the total number of phosphates in\
    \ the folded configuration.\nFor self-folding configurations, \"N\" is the strand\
    \ length in\nnucleotides minus 1."
  type: boolean?
  inputBinding:
    prefix: --salt
- id: in_strand
  doc: "=(single strand concentration in \"mM\")\nstrand concentration (default 0.1)\
    \ in mM used in (SantaLucia and\nHicks 2004; eq. 3). Valid values are between\
    \ 0.01 and 100.\nIn melting temperature calculations for oligonucleotide signatures,\n\
    x is ALWAYS 1."
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_cla_do
  doc: "generates an eps file from a phylogeny tree file in a Newick format.\nNodes\
    \ that have names ending in \"*\" are colored red."
  type: string
  inputBinding:
    position: 0
- id: in_clus
  doc: "interprets the results of matches of experimental samples against\ncluster\
    \ oligo signatures generated by \"aodp\""
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_positions
  doc: "[=file-name]\nOutput for Array Designer (tab-separated list of oligo sites)"
  type: File?
  outputBinding:
    glob: $(inputs.in_positions)
- id: out_basename
  doc: "=(name)\nAll oligos in the following formats:\n* \"name.oligo.strings\" strings\
    \ grouped by sequence and/or group\n* \"name.oligo.fasta\" FASTA\n* \"name.oligo.gff\"\
    \ GFF\n* \"name.oligo.tab\" tab-separated\n* \"name.oligo.positions\" positions\n\
    * \"name.oligo.ranges\" ranges\nIf the option --tree-file is specified (phylogeny\
    \ tree), the\nfollowing output files will also be generated:\n* \"name.newick\"\
    \ phylogeny tree with labeled internal nodes\n* \"name.node-list\" list of sequences\
    \ for every internal node\n* \"name.lineage\" lineage of every sequence in the\
    \ phylogeny\n* \"name.cladogram.eps\" cladogram associated with the annotated\n\
    phylogeny tree\nThe output options --strings, --fasta, --gff, --tab, --positions,\n\
    --ranges --newick, --node-list, --lineage and --cladogram are\nincompatible with\
    \ --basename."
  type: File?
  outputBinding:
    glob: $(inputs.in_basename)
- id: out_cluster_list
  doc: "[=file-name]\nGenerates the list of clusters: groupings of sequences that\
    \ can be\nidentified by at least one oligonucleotide signature (cluster\noligonucleotide\
    \ signature).\nThe output contains the following tab-separated columns:\n* Numeric\
    \ identifier of the cluster. This is a generated value.\n* Space-separated list\
    \ of all identifiers of sequences contained in\nthe cluster\n* If the cluster\
    \ matches exactly a target node (leaf node or\ninternal phylogeny node), an additional\
    \ column with the name of\nthis node is included"
  type: File?
  outputBinding:
    glob: $(inputs.in_cluster_list)
- id: out_cluster_oligos
  doc: "[=file-name]\nGenerates the list of all oligonucleotide signatures for all\n\
    clusters identified. The output contains the following tab-separated\ncolumns:\n\
    * Numeric identifier of the cluster. This matches the value in\n--cluster-list.\n\
    * String representation of the cluster oligonucleotide signature"
  type: File?
  outputBinding:
    glob: $(inputs.in_cluster_oligos)
- id: out_clusters
  doc: "=(name)\nGenerates a file of cluster nodes (\"name.cluster-list\") and a file\n\
    of cluster oligonucleotide signatures (\"name.cluster-oligos\")\nThe output options\
    \ --cluster-list and --cluster-oligos are\nincompatible with --clusters."
  type: File?
  outputBinding:
    glob: $(inputs.in_clusters)
- id: out_out_group_file
  doc: "=(relative-file-name)\nThe outgroup list is a case-sensitive list of species\
    \ (sequence\nnames) that are to be excluded from the final output. They will\n\
    still be used in the generation of oligos, but oligos specific to\nthem will be\
    \ omitted.\nWill terminate with an error if a sequence name in the\n--outgroup-file\
    \ is not found in any *fasta-sequence-file*."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_group_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aodp:2.5.0.1--pl526hc9558a2_0
cwlVersion: v1.1
baseCommand:
- aodp
