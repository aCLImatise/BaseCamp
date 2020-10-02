class: CommandLineTool
id: SOAPdenovo_127mer_all.cwl
inputs:
- id: in_configfile_config_file
  doc: 'configFile: the config file of solexa reads'
  type: File
  inputBinding:
    prefix: -s
- id: in_outputgraph_prefix_output
  doc: 'outputGraph: prefix of output graph file name'
  type: File
  inputBinding:
    prefix: -o
- id: in_kmermin_max_kmer
  doc: 'kmer(min 13, max 127): kmer size, [23]'
  type: long
  inputBinding:
    prefix: -K
- id: in_number_cpu_use
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
- id: in_initmemoryassumption_memory_assumption
  doc: 'initMemoryAssumption: memory assumption initialized to avoid further reallocation,
    unit G, [0]'
  type: long
  inputBinding:
    prefix: -a
- id: in_kmerfreqcutoff_kmers_larger
  doc: 'kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be
    deleted, [0]'
  type: long
  inputBinding:
    prefix: -d
- id: in_optional_resolve_repeats
  doc: (optional)  resolve repeats by reads, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: in_edgecovcutoff_edges_coverage
  doc: 'edgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted,
    [1]'
  type: long
  inputBinding:
    prefix: -D
- id: in_mergelevelmin_max_strength
  doc: 'mergeLevel(min 0, max 3): the strength of merging similar sequences during
    contiging, [1]'
  type: long
  inputBinding:
    prefix: -M
- id: in_two_edges_arcs
  doc: "arcWeight: two edges, between which the arc's weight is larger than arcWeight,\
    \ will be linerized, [0]"
  type: long
  inputBinding:
    prefix: -e
- id: in_maxkmer_max_maximum
  doc: 'maxKmer (max 127): maximum kmer size used for multi-kmer, [NO]'
  type: long
  inputBinding:
    prefix: -m
- id: in_optional_merge_bubble
  doc: (optional)  merge clean bubble before iterate, works only if -M is set when
    using multi-kmer, [NO]
  type: boolean
  inputBinding:
    prefix: -E
- id: in_kmerrcmin_max_kmer
  doc: 'kmer_R2C(min 13, max 127): kmer size used for mapping reads to contigs, [K]'
  type: long
  inputBinding:
    prefix: -k
- id: in_optional_fill_gaps
  doc: (optional)  fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: in_optional_unmask_contigs
  doc: (optional)  un-mask contigs with high/low coverage before scaffolding, [mask]
  type: boolean
  inputBinding:
    prefix: -u
- id: in_optional_keep_contigs
  doc: (optional)  keep contigs weakly connected to other contigs in scaffold, [NO]
  type: boolean
  inputBinding:
    prefix: -w
- id: in_gaplendiff_allowed_difference
  doc: 'gapLenDiff: allowed length difference between estimated and filled gap, [50]'
  type: long
  inputBinding:
    prefix: -G
- id: in_mincontiglen_shortest_contig
  doc: 'minContigLen: shortest contig for scaffolding, [K+2]'
  type: long
  inputBinding:
    prefix: -L
- id: in_mincontigcvg_minimum_contig
  doc: 'minContigCvg: minimum contig coverage (c*avgCvg), contigs shorter than 100bp
    with coverage smaller than c*avgCvg will be masked before scaffolding unless -u
    is set, [0.1]'
  type: double
  inputBinding:
    prefix: -c
- id: in_maxcontigcvg_maximum_contig
  doc: 'maxContigCvg: maximum contig coverage (C*avgCvg), contigs with coverage larger
    than C*avgCvg or contigs shorter than 100bp with coverage larger than 0.8*C*avgCvg
    will be masked before scaffolding unless -u is set, [2]'
  type: double
  inputBinding:
    prefix: -C
- id: in_insertsizeupperbound_bavgins_will
  doc: 'insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size
    for large insert size ( > 1000) when handling pair-end connections between contigs
    if b is set to larger than 1, [1.5]'
  type: double
  inputBinding:
    prefix: -b
- id: in_bubblecoverage_remove_contig
  doc: "bubbleCoverage: remove contig with lower cvoerage in bubble structure if both\
    \ contigs' coverage are smaller than bubbleCoverage*avgCvg, [0.6]"
  type: double
  inputBinding:
    prefix: -B
- id: in_genomesize_genome_size
  doc: 'genomeSize: genome size for statistics, [0]'
  type: long
  inputBinding:
    prefix: -N
- id: in_optional_output_information
  doc: (optional)  output information for Hawkeye to visualize the assembly, [NO]
  type: boolean
  inputBinding:
    prefix: -V
- id: in_soapdenovo_s_configfile
  doc: SOAPdenovo all -s configFile -o outputGraph [-R -F -u -w] [-K kmer -p n_cpu
    -a initMemoryAssumption -d KmerFreqCutOff -D EdgeCovCutoff -M mergeLevel -k kmer_R2C,
    -G gapLenDiff -L minContigLen -c minContigCvg -C maxContigCvg -b insertSizeUpperBound
    -B bubbleCoverage -N genomeSize]
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputgraph_prefix_output
  doc: 'outputGraph: prefix of output graph file name'
  type: File
  outputBinding:
    glob: $(inputs.in_outputgraph_prefix_output)
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- all
