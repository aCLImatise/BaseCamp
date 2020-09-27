class: CommandLineTool
id: SOAPdenovo_63mer_scaff.cwl
inputs:
- id: in_inputgraph_prefix_input
  doc: 'inputGraph: prefix of input graph file names'
  type: File
  inputBinding:
    prefix: -g
- id: in_optional_fill_gaps
  doc: (optional)      fill gaps in scaffold, [No]
  type: boolean
  inputBinding:
    prefix: -F
- id: in_optional_use_mode
  doc: (optional)      use compatible mode to build scaffold with contig produced
    by Version 1.05, [No]
  type: boolean
  inputBinding:
    prefix: -z
- id: in_optional_unmask_contigs
  doc: (optional)      un-mask contigs with high/low coverage before scaffolding,
    [mask]
  type: boolean
  inputBinding:
    prefix: -u
- id: in_optional_structure_exists
  doc: (optional)      if scaffold structure exists, do gapfilling only(-F), [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: in_optional_keep_contigs
  doc: (optional)      keep contigs weakly connected to other contigs in scaffold,
    [NO]
  type: boolean
  inputBinding:
    prefix: -w
- id: in_optional_output_information
  doc: (optional)      output information for Hawkeye to visualize the assembly, [NO]
  type: boolean
  inputBinding:
    prefix: -V
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
- id: in_number_cpu_use
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
- id: in_sc_aff
  doc: scaff -g inputGraph [-F -z -u -S -w] [-G gapLenDiff -L minContigLen -c minContigCvg
    -C maxContigCvg -b insertSizeUpperBound -B bubbleCoverage -N genomeSize -p n_cpu]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-63mer
- scaff
