class: CommandLineTool
id: rapidnj.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: turn on verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_format
  doc: Specifies the type of input. pd = distance matrix in phylip format, sth = multiple
    alignment in (single line) stockholm format. fa = multiple alignment in (single
    line) FASTA format.
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: Specifies the type of output. t = phylogenetic tree in newick format (default),
    m = distance matrix.
  type: string
  inputBinding:
    prefix: --output-format
- id: evolution_model
  doc: Specifies which sequence evolution method to use when computing distance estimates
    from multiple alignments. jc = juke cantor, kim = Kimura's distance (default).
  type: string
  inputBinding:
    prefix: --evolution-model
- id: memory_size
  doc: The maximum amount of memory which rapidNJ is allowed to use (in MB). Default
    is 90% of all available memory.
  type: boolean
  inputBinding:
    prefix: --memory-size
- id: rapid_nj_mem
  doc: Force RapidNJ to use a memory efficient version of rapidNJ. The 'arg' specifies
    the percentage of a sorted distance matrix which should be stored in memory (arg=10
    means 10%).
  type: string
  inputBinding:
    prefix: --rapidnj-mem
- id: rapid_nj_disk
  doc: Force RapidNJ to use HDD caching where 'arg' is the directory used to store
    cached files.
  type: string
  inputBinding:
    prefix: --rapidnj-disk
- id: cores
  doc: Number of cores to use for computating distance matrices from multiple alignments.
    All available cores are used by default.
  type: string
  inputBinding:
    prefix: --cores
- id: bootstrap
  doc: Compute bootstrap values using ARG samples. The output tree will be annotated
    with the bootstrap values.
  type: string
  inputBinding:
    prefix: --bootstrap
- id: alignment_type
  doc: 'Force the input alignment to be treated as: p = protein alignment,  d = DNA
    alignment.'
  type: string
  inputBinding:
    prefix: --alignment-type
- id: no_negative_length
  doc: Adjust for negative branch lengths.
  type: boolean
  inputBinding:
    prefix: --no-negative-length
- id: output_file
  doc: Output the result to this file instead of stdout.
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- rapidnj
