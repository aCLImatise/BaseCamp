class: CommandLineTool
id: run_mapsembler2_pipeline.sh.cwl
inputs:
- id: in_file_containing_starters
  doc: ': file containing starters (fasta)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_reads_separated_space
  doc: "of reads separated by space, surrounded by the '\"' character. Note that reads\
    \ may be in fasta or fastq format, gzipped or not. Example: -r \"data_sample/reads_sequence1.fasta\
    \   data_sample/reads_sequence2.fasta.gz\"."
  type: long?
  inputBinding:
    prefix: -r
- id: in_kind_assembly_unitig
  doc: ': kind of assembly: 1=unitig (fasta), 2=contig (fasta), 3=unitig (graph),
    4=contig(graph)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_out_files_start
  doc: 'All out files will start with this prefix. Example: -p my_prefix'
  type: string?
  inputBinding:
    prefix: -p
- id: in_set_length_used
  doc: Set the length of used kmers. Must fit the compiled value. Default=31. Example
    -k 31
  type: long?
  inputBinding:
    prefix: -k
- id: in_set_minimal_coverage
  doc: Set the minimal coverage. Default=5. Example -c 5
  type: long?
  inputBinding:
    prefix: -c
- id: in_set_number_reads
  doc: 'Set the number of authorized substitutions used while mapping reads on found
    SNPs. Default=1. Example: -d 1'
  type: long?
  inputBinding:
    prefix: -d
- id: in_estimated_genome_size
  doc: 'Estimated genome size. Used only to control memory usage. e.g. 3 billion (3000000000)
    uses 4Gb of RAM. Default=10 million. Example: -d 10000000'
  type: long?
  inputBinding:
    prefix: -g
- id: in_set_process_example
  doc: 'Set the process of search in the graph (1=Breadth  and 2=Depth). Default=1.
    Example: -f 1'
  type: long?
  inputBinding:
    prefix: -f
- id: in_set_nodes_length
  doc: 'Set the maximal nodes length . Default=40. Example: -x 40'
  type: long?
  inputBinding:
    prefix: -x
- id: in_set_graph_depth
  doc: 'Set the maximal graph depth . Default=10000. Example: -y 10000'
  type: long?
  inputBinding:
    prefix: -y
- id: in_this_message_exist
  doc: this message and exist
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_mapsembler2_pipeline.sh
