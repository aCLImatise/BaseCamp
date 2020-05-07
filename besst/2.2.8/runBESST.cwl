class: CommandLineTool
id: runBESST.cwl
inputs:
- id: y
  doc: Deactivate pathfinder module for including smaller contigs.
  type: boolean
  inputBinding:
    prefix: -y
- id: no_score
  doc: Statistical scoring is not performed. BESST instead searches for paths between
    contigs.
  type: boolean
  inputBinding:
    prefix: --no_score
- id: c
  doc: Fasta file containing contigs.
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: Path(s) to bamfile(s).
  type: string[]
  inputBinding:
    prefix: -f
- id: orientation
  doc: Mapped orientation for each library given with -f option. Valid input is either
    fr (forward reverse orientation) or rf (reverse forward orientation).
  type: string[]
  inputBinding:
    prefix: -orientation
- id: r
  doc: Mean read length of libraries.
  type: string[]
  inputBinding:
    prefix: -r
- id: m
  doc: Mean insert size of libraries.
  type: string[]
  inputBinding:
    prefix: -m
- id: s
  doc: Estimated standard deviation of libraries.
  type: string[]
  inputBinding:
    prefix: -s
- id: z
  doc: User specified coverage cutoff. (Manually filter out contigs with coverage
    over this value)
  type: string
  inputBinding:
    prefix: -z
- id: z_min
  doc: User specified coverage cutoff. (Manually filter out contigs with coverage
    under this value)
  type: string
  inputBinding:
    prefix: -z_min
- id: a
  doc: Maximum length ratio for merging of haplotypic regions.
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: 'Number of standard deviations over mean/2 of coverage to allow for clasification
    of haplotype. Example: contigs with under mean/2 + 3sigma are indicated as potential
    haplotypes (tested later) if -b 3'
  type: string
  inputBinding:
    prefix: -b
- id: g
  doc: Haplotype detection function, default = off
  type: boolean
  inputBinding:
    prefix: -g
- id: t
  doc: Threshold value filter out reads that are mapped too far apart given insert
    size.
  type: string[]
  inputBinding:
    prefix: -T
- id: e
  doc: 'Threshold value for the least nr of links that is needed to create an edge.
    Default for all libs: Inferred by BESST (see value in output in Statistics.txt).'
  type: string[]
  inputBinding:
    prefix: -e
- id: k
  doc: "Contig size threshold for the library (all contigs below this size is discarded\
    \ from the 'large contigs' scaffolding, but included in pathfinding). Default:\
    \ Set to same as -T parameter"
  type: long[]
  inputBinding:
    prefix: -k
- id: filter_contigs
  doc: 'Contigs under this size is discarded from all scaffolding (including pathfinding).
    they are also not included in the resulting scaffold output fasta file and any
    of the other files as well as all statistics. Default: All contigs are included'
  type: string
  inputBinding:
    prefix: -filter_contigs
- id: min_mapq
  doc: Lowest mapping quality allowed in order to use the read pair (both reads needs
    to have equal or bigger mapq than this value). This value is compared to the mapping
    quality column in the BAM file.
  type: long
  inputBinding:
    prefix: --min_mapq
- id: iter
  doc: The number of iterations performed in breadth first search for placing smaller
    contigs.
  type: File
  inputBinding:
    prefix: --iter
- id: score_cut_off
  doc: Only store paths with score larger than score_cutoff.
  type: string
  inputBinding:
    prefix: --score_cutoff
- id: max_extensions
  doc: Maximum number of (large) scaffolds to search for paths extensions with.
  type: long
  inputBinding:
    prefix: --max_extensions
- id: no_ilp
  doc: 'Warning: Do not use this option! This option is included only for benchmarking
    purposes of old BESST algorithm. This option will give poor results as it mimics
    earlier versions of BESST.'
  type: boolean
  inputBinding:
    prefix: --NO_ILP
- id: faster_ilp
  doc: Faster but worse performing heuristic solution to solving ILPs. May be used
    if BESST is too slow. However, lowering --iter is usually more effective to reduce
    scaffolding time.
  type: boolean
  inputBinding:
    prefix: --FASTER_ILP
- id: print_scores
  doc: Print BESST scores on edges in the Scaffolding graph.
  type: boolean
  inputBinding:
    prefix: --print_scores
- id: k
  doc: k-mer size used in de brujin graph for obtaining contigs in assembly, default
    50
  type: string
  inputBinding:
    prefix: -K
- id: m
  doc: m-mer usted for creating connection graph. Should be set lower than k-mer size
  type: string
  inputBinding:
    prefix: -M
- id: o
  doc: Path to output directory. BESST will create a folder named 'BESST_output' in
    the directory given by the path.
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: Deactivate sequencing duplicates detection
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: Parallellize work load of path finder module in case of multiple processors
    available.
  type: boolean
  inputBinding:
    prefix: -q
- id: devel
  doc: Run in development mode (bug checking and memory usage etc.)
  type: boolean
  inputBinding:
    prefix: -devel
- id: plots
  doc: Plot coverage, histograms of scores e.t.c.
  type: boolean
  inputBinding:
    prefix: -plots
- id: separate_repeats
  doc: Separates contigs classified as repeats by BESST into a file 'repeats.fa'.
    They are not included in the main scaffolding output file with this flag specified.
  type: boolean
  inputBinding:
    prefix: --separate_repeats
- id: dfs_traversal
  doc: Depth first search with DP in the contig graph (default).
  type: boolean
  inputBinding:
    prefix: --dfs_traversal
- id: bfs_traversal
  doc: Choose a breadth first search in the contig graph. Default is the new depth
    first search with a DP approch that seems to outperform previous traversals. This
    option is kept for evaluation but is not reccomended to specify.
  type: boolean
  inputBinding:
    prefix: --bfs_traversal
- id: max_contig_overlap
  doc: BESST checks for overlapping ends in contigs that are adjacent in a scaffold.
    This parameter sets the maximum identical overlap to search for, default is 200.
  type: long
  inputBinding:
    prefix: -max_contig_overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- runBESST
