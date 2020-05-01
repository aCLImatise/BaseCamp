#!/usr/bin/env cwl-runner

baseCommand:
- rapidnj
class: CommandLineTool
cwlVersion: v1.0
id: rapidnj
inputs:
- doc: ''
  id: input
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 1
  type: string
- doc: turn on verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Specifies the type of input. pd = distance matrix in phylip format, sth = multiple
    alignment in (single line) stockholm format. fa = multiple alignment in (single
    line) FASTA format.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Specifies the type of output. t = phylogenetic tree in newick format (default),
    m = distance matrix.
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: Specifies which sequence evolution method to use when computing distance estimates
    from multiple alignments. jc = juke cantor, kim = Kimura's distance (default).
  id: evolution_model
  inputBinding:
    prefix: --evolution-model
  type: string
- doc: The maximum amount of memory which rapidNJ is allowed to use (in MB). Default
    is 90% of all available memory.
  id: memory_size
  inputBinding:
    prefix: --memory-size
  type: boolean
- doc: Force RapidNJ to use a memory efficient version of rapidNJ. The 'arg' specifies
    the percentage of a sorted distance matrix which should be stored in memory (arg=10
    means 10%).
  id: rapid_nj_mem
  inputBinding:
    prefix: --rapidnj-mem
  type: string
- doc: Force RapidNJ to use HDD caching where 'arg' is the directory used to store
    cached files.
  id: rapid_nj_disk
  inputBinding:
    prefix: --rapidnj-disk
  type: string
- doc: Number of cores to use for computating distance matrices from multiple alignments.
    All available cores are used by default.
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: Compute bootstrap values using ARG samples. The output tree will be annotated
    with the bootstrap values.
  id: bootstrap
  inputBinding:
    prefix: --bootstrap
  type: string
- doc: 'Force the input alignment to be treated as: p = protein alignment,  d = DNA
    alignment.'
  id: alignment_type
  inputBinding:
    prefix: --alignment-type
  type: string
- doc: Adjust for negative branch lengths.
  id: no_negative_length
  inputBinding:
    prefix: --no-negative-length
  type: boolean
- doc: Output the result to this file instead of stdout.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
