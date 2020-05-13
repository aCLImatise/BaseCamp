class: CommandLineTool
id: atac.pl.cwl
inputs:
- id: genome_dir
  doc: -- path to the GENOMES directory
  type: File
  inputBinding:
    prefix: -genomedir
- id: num_segments
  doc: -- number of segments to do the search in (doubling segments halves memory
    usage)
  type: string
  inputBinding:
    prefix: -numsegments
- id: num_segments
  doc: SUPPORTED; DO NOT USE
  type: string
  inputBinding:
    prefix: -numsegments
- id: num_threads
  doc: -- number of threads to use per search (slight increase in memory usage)
  type: string
  inputBinding:
    prefix: -numthreads
- id: meryl_only
  doc: -- only run the meryl components
  type: boolean
  inputBinding:
    prefix: -merylonly
- id: meryl_threads
  doc: -- number of threads to use for meryl
  type: string
  inputBinding:
    prefix: -merylthreads
- id: same_species
  doc: -- use magic values for same species
  type: boolean
  inputBinding:
    prefix: -samespecies
- id: cross_species
  doc: -- use guesses for different species
  type: boolean
  inputBinding:
    prefix: -crossspecies
- id: segment_id
  doc: -- only run segment with id x (don't use)
  type: string
  inputBinding:
    prefix: -segmentid
outputs: []
cwlVersion: v1.1
baseCommand:
- atac.pl
