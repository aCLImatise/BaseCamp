class: CommandLineTool
id: rapidnj.cwl
inputs:
- id: in_verbose
  doc: turn on verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_format
  doc: "Specifies the type of input. pd = distance\nmatrix in phylip format, sth =\
    \ multiple alignment in (single line) stockholm format.\nfa = multiple alignment\
    \ in (single line) FASTA format."
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "Specifies the type of output. t = phylogenetic tree in newick format\n(default),\
    \ m = distance matrix."
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_evolution_model
  doc: "Specifies which sequence evolution method to use when computing\ndistance\
    \ estimates from multiple alignments. jc = juke cantor,\nkim = Kimura's distance\
    \ (default)."
  type: string?
  inputBinding:
    prefix: --evolution-model
- id: in_memory_size
  doc: "The maximum amount of memory which rapidNJ is allowed to use (in MB).\nDefault\
    \ is 90% of all available memory."
  type: boolean?
  inputBinding:
    prefix: --memory-size
- id: in_rapid_nj_mem
  doc: "Force RapidNJ to use a memory efficient version of rapidNJ. The 'arg'\nspecifies\
    \ the percentage of a sorted distance matrix which should be\nstored in memory\
    \ (arg=10 means 10%)."
  type: long?
  inputBinding:
    prefix: --rapidnj-mem
- id: in_rapid_nj_disk
  doc: "Force RapidNJ to use HDD caching where 'arg' is the directory used to\nstore\
    \ cached files."
  type: Directory?
  inputBinding:
    prefix: --rapidnj-disk
- id: in_cores
  doc: "Number of cores to use for computating distance matrices from multiple\nalignments.\
    \ All available cores are used by default."
  type: long?
  inputBinding:
    prefix: --cores
- id: in_bootstrap
  doc: "Compute bootstrap values using ARG samples. The output tree will be\nannotated\
    \ with the bootstrap values."
  type: string?
  inputBinding:
    prefix: --bootstrap
- id: in_alignment_type
  doc: "Force the input alignment to be treated as: p = protein alignment,\nd = DNA\
    \ alignment."
  type: string?
  inputBinding:
    prefix: --alignment-type
- id: in_no_negative_length
  doc: Adjust for negative branch lengths.
  type: boolean?
  inputBinding:
    prefix: --no-negative-length
- id: in_output_file
  doc: Output the result to this file instead of stdout.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output the result to this file instead of stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rapidnj
