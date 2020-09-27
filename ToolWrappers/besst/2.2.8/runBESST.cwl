class: CommandLineTool
id: runBESST.cwl
inputs:
- id: in_deactivate_pathfinder_module
  doc: Deactivate pathfinder module for including smaller
  type: boolean
  inputBinding:
    prefix: -y
- id: in_fasta_file_containing
  doc: Fasta file containing contigs.
  type: File
  inputBinding:
    prefix: -c
- id: in_paths_to_bamfiles
  doc: Path(s) to bamfile(s).
  type: string[]
  inputBinding:
    prefix: -f
- id: in_orientation
  doc: "Mapped orientation for each library given with -f\noption. Valid input is\
    \ either fr (forward reverse\norientation) or rf (reverse forward orientation)."
  type: string[]
  inputBinding:
    prefix: -orientation
- id: in_mean_read_length
  doc: Mean read length of libraries.
  type: string[]
  inputBinding:
    prefix: -r
- id: in_mean_insert_size
  doc: Mean insert size of libraries.
  type: string[]
  inputBinding:
    prefix: -m
- id: in_estimated_standard_deviation
  doc: Estimated standard deviation of libraries.
  type: string[]
  inputBinding:
    prefix: -s
- id: in_user_over_value
  doc: "User specified coverage cutoff. (Manually filter out\ncontigs with coverage\
    \ over this value)"
  type: string
  inputBinding:
    prefix: -z
- id: in_z_min
  doc: "User specified coverage cutoff. (Manually filter out\ncontigs with coverage\
    \ under this value)"
  type: string
  inputBinding:
    prefix: -z_min
- id: in_maximum_length_ratio
  doc: Maximum length ratio for merging of haplotypic
  type: long
  inputBinding:
    prefix: -a
- id: in_haplotype_detection_function
  doc: Haplotype detection function, default = off
  type: boolean
  inputBinding:
    prefix: -g
- id: in_threshold_value_filter
  doc: "Threshold value filter out reads that are mapped too\nfar apart given insert\
    \ size."
  type: string[]
  inputBinding:
    prefix: -T
- id: in_threshold_value_least
  doc: "Threshold value for the least nr of links that is\nneeded to create an edge.\
    \ Default for all libs:\nInferred by BESST (see value in output in\nStatistics.txt)."
  type: string[]
  inputBinding:
    prefix: -e
- id: in_contig_size_threshold
  doc: "Contig size threshold for the library (all contigs\nbelow this size is discarded\
    \ from the 'large contigs'\nscaffolding, but included in pathfinding). Default:\n\
    Set to same as -T parameter"
  type: string[]
  inputBinding:
    prefix: -k
- id: in_filter_contigs
  doc: "Contigs under this size is discarded from all\nscaffolding (including pathfinding).\
    \ they are also not\nincluded in the resulting scaffold output fasta file\nand\
    \ any of the other files as well as all statistics.\nDefault: All contigs are\
    \ included"
  type: long
  inputBinding:
    prefix: -filter_contigs
- id: in_min_mapq
  doc: "Lowest mapping quality allowed in order to use the\nread pair (both reads\
    \ needs to have equal or bigger\nmapq than this value). This value is compared\
    \ to the\nmapping quality column in the BAM file."
  type: long
  inputBinding:
    prefix: --min_mapq
- id: in_iter
  doc: "The number of iterations performed in breadth first\nsearch for placing smaller\
    \ contigs."
  type: File
  inputBinding:
    prefix: --iter
- id: in_score_cut_off
  doc: Only store paths with score larger than score_cutoff.
  type: string
  inputBinding:
    prefix: --score_cutoff
- id: in_max_extensions
  doc: "Maximum number of (large) scaffolds to search for\npaths extensions with."
  type: long
  inputBinding:
    prefix: --max_extensions
- id: in_no_ilp
  doc: "Warning: Do not use this option! This option is\nincluded only for benchmarking\
    \ purposes of old BESST\nalgorithm. This option will give poor results as it\n\
    mimics earlier versions of BESST."
  type: boolean
  inputBinding:
    prefix: --NO_ILP
- id: in_faster_ilp
  doc: "Faster but worse performing heuristic solution to\nsolving ILPs. May be used\
    \ if BESST is too slow.\nHowever, lowering --iter is usually more effective to\n\
    reduce scaffolding time."
  type: boolean
  inputBinding:
    prefix: --FASTER_ILP
- id: in_print_scores
  doc: Print BESST scores on edges in the Scaffolding graph.
  type: boolean
  inputBinding:
    prefix: --print_scores
- id: in_kmer_size_used
  doc: "k-mer size used in de brujin graph for obtaining\ncontigs in assembly, default\
    \ 50"
  type: long
  inputBinding:
    prefix: -K
- id: in_usted_creating_graph
  doc: "m-mer usted for creating connection graph. Should be\nset lower than k-mer\
    \ size"
  type: long
  inputBinding:
    prefix: -M
- id: in_path_output_besst
  doc: "Path to output directory. BESST will create a folder\nnamed 'BESST_output'\
    \ in the directory given by the\npath."
  type: File
  inputBinding:
    prefix: -o
- id: in_deactivate_sequencing_duplicates
  doc: Deactivate sequencing duplicates detection
  type: boolean
  inputBinding:
    prefix: -d
- id: in_parallellize_work_load
  doc: "Parallellize work load of path finder module in case\nof multiple processors\
    \ available."
  type: boolean
  inputBinding:
    prefix: -q
- id: in_devel
  doc: "Run in development mode (bug checking and memory usage\netc.)"
  type: boolean
  inputBinding:
    prefix: -devel
- id: in_plots
  doc: Plot coverage, histograms of scores e.t.c.
  type: boolean
  inputBinding:
    prefix: -plots
- id: in_separate_repeats
  doc: "Separates contigs classified as repeats by BESST into\na file 'repeats.fa'.\
    \ They are not included in the main\nscaffolding output file with this flag specified."
  type: File
  inputBinding:
    prefix: --separate_repeats
- id: in_dfs_traversal
  doc: "Depth first search with DP in the contig graph\n(default)."
  type: boolean
  inputBinding:
    prefix: --dfs_traversal
- id: in_bfs_traversal
  doc: "Choose a breadth first search in the contig graph.\nDefault is the new depth\
    \ first search with a DP\napproch that seems to outperform previous traversals.\n\
    This option is kept for evaluation but is not\nreccomended to specify."
  type: boolean
  inputBinding:
    prefix: --bfs_traversal
- id: in_max_contig_overlap
  doc: "BESST checks for overlapping ends in contigs that are\nadjacent in a scaffold.\
    \ This parameter sets the\nmaximum identical overlap to search for, default is\n\
    200."
  type: long
  inputBinding:
    prefix: -max_contig_overlap
- id: in_contigs_dot
  doc: --no_score            Statistical scoring is not performed. BESST instead
  type: string
  inputBinding:
    position: 0
- id: in_regions_dot
  doc: -b HAPLTHRESHOLD      Number of standard deviations over mean/2 of coverage
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_besst
  doc: "Path to output directory. BESST will create a folder\nnamed 'BESST_output'\
    \ in the directory given by the\npath."
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_besst)
- id: out_separate_repeats
  doc: "Separates contigs classified as repeats by BESST into\na file 'repeats.fa'.\
    \ They are not included in the main\nscaffolding output file with this flag specified."
  type: File
  outputBinding:
    glob: $(inputs.in_separate_repeats)
cwlVersion: v1.1
baseCommand:
- runBESST
