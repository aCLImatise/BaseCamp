class: CommandLineTool
id: run_mapsembler2_pipeline.sh.cwl
inputs:
- id: s
  doc: ': file containing starters (fasta)'
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: "of reads separated by space, surrounded by the '\"' character. Note that reads\
    \ may be in fasta or fastq format, gzipped or not. Example: -r \"data_sample/reads_sequence1.fasta\
    \   data_sample/reads_sequence2.fasta.gz\"."
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: ': kind of assembly: 1=unitig (fasta), 2=contig (fasta), 3=unitig (graph),
    4=contig(graph)'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: 'All out files will start with this prefix. Example: -p my_prefix'
  type: string
  inputBinding:
    prefix: -p
- id: k
  doc: Set the length of used kmers. Must fit the compiled value. Default=31. Example
    -k 31
  type: string
  inputBinding:
    prefix: -k
- id: c
  doc: Set the minimal coverage. Default=5. Example -c 5
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: 'Set the number of authorized substitutions used while mapping reads on found
    SNPs. Default=1. Example: -d 1'
  type: string
  inputBinding:
    prefix: -d
- id: g
  doc: 'Estimated genome size. Used only to control memory usage. e.g. 3 billion (3000000000)
    uses 4Gb of RAM. Default=10 million. Example: -d 10000000'
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: 'Set the process of search in the graph (1=Breadth  and 2=Depth). Default=1.
    Example: -f 1'
  type: string
  inputBinding:
    prefix: -f
- id: x
  doc: 'Set the maximal nodes length . Default=40. Example: -x 40'
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: 'Set the maximal graph depth . Default=10000. Example: -y 10000'
  type: string
  inputBinding:
    prefix: -y
- id: h
  doc: this message and exist
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- run_mapsembler2_pipeline.sh
