class: CommandLineTool
id: atac.pl.cwl
inputs:
- id: in_genome_dir
  doc: -- path to the GENOMES directory
  type: File?
  inputBinding:
    prefix: -genomedir
- id: in_num_threads
  doc: "-- number of threads to use per search\n(slight increase in memory usage)"
  type: long?
  inputBinding:
    prefix: -numthreads
- id: in_meryl_only
  doc: -- only run the meryl components
  type: boolean?
  inputBinding:
    prefix: -merylonly
- id: in_meryl_threads
  doc: -- number of threads to use for meryl
  type: long?
  inputBinding:
    prefix: -merylthreads
- id: in_same_species
  doc: -- use magic values for same species
  type: boolean?
  inputBinding:
    prefix: -samespecies
- id: in_cross_species
  doc: -- use guesses for different species
  type: boolean?
  inputBinding:
    prefix: -crossspecies
- id: in_segment_id
  doc: "-- only run segment with id x\n(don't use)\n"
  type: string?
  inputBinding:
    prefix: -segmentid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- atac.pl
