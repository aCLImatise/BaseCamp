class: CommandLineTool
id: ppanggolin_rarefaction.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: beta
  doc: 'beta is the strength of the smoothing using the graph topology during partitionning.
    0 will deactivate spatial smoothing. (default: 2.5)'
  type: string
  inputBinding:
    prefix: --beta
- id: depth
  doc: 'Number of samplings at each sampling point (default: 30)'
  type: string
  inputBinding:
    prefix: --depth
- id: min
  doc: 'Minimum number of organisms in a sample (default: 1)'
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: 'Maximum number of organisms in a sample (if above the number of provided organisms,
    the provided organisms will be the maximum) (default: 100)'
  type: long
  inputBinding:
    prefix: --max
- id: max_degree_smoothing
  doc: 'max. degree of the nodes to be included in the smoothing process. (default:
    10)'
  type: long
  inputBinding:
    prefix: --max_degree_smoothing
- id: output
  doc: 'Output directory (default: ppanggolin_output_DATE2020-05-03_HOUR04.18.53_PID9274)'
  type: string
  inputBinding:
    prefix: --output
- id: free_dispersion
  doc: 'use if the dispersion around the centroid vector of each partition during
    must be free. It will be the same for all organisms by default. (default: False)'
  type: boolean
  inputBinding:
    prefix: --free_dispersion
- id: chunk_size
  doc: 'Size of the chunks when performing partitionning using chunks of organisms.
    Chunk partitionning will be used automatically if the number of genomes is above
    this number. (default: 500)'
  type: string
  inputBinding:
    prefix: --chunk_size
- id: nb_of_partitions
  doc: 'Number of partitions to use. Must be at least 3. By default reuse K if it
    exists else compute it. (default: -1)'
  type: string
  inputBinding:
    prefix: --nb_of_partitions
- id: re_estimate_k
  doc: 'Will recompute the number of partitions for each sample (between the values
    provided by --krange) (VERY intensive. Can take a long time.) (default: False)'
  type: boolean
  inputBinding:
    prefix: --reestimate_K
- id: kmm
  doc: 'KRANGE, --krange KRANGE KRANGE Range of K values to test when detecting K
    automatically. Default between 3 and the K previously computed if there is one,
    or 20 if there are none. (default: [3, -1])'
  type: string
  inputBinding:
    prefix: -Kmm
- id: soft_core
  doc: 'Soft core threshold (default: 0.95)'
  type: string
  inputBinding:
    prefix: --soft_core
- id: seed
  doc: 'seed used to generate random numbers (default: 42)'
  type: string
  inputBinding:
    prefix: --seed
- id: tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: verbose
  doc: '{0,1,2}     Indicate verbose level (0 for warning and errors only, 1 for info,
    2 for debug) (default: 1)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log
  doc: 'log output file (default: stdout)'
  type: string
  inputBinding:
    prefix: --log
- id: cpu
  doc: 'Number of available cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpu
- id: force
  doc: 'Force writing in output directory and in pangenome output file. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- rarefaction
