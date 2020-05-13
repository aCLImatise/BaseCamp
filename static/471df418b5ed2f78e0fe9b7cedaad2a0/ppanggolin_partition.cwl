class: CommandLineTool
id: ppanggolin_partition.cwl
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
- id: max_degree_smoothing
  doc: 'max. degree of the nodes to be included in the smoothing process. (default:
    10)'
  type: long
  inputBinding:
    prefix: --max_degree_smoothing
- id: output
  doc: 'Output directory (default: ppanggolin_output_DATE2020-05-03_HOUR04.18.36_PID9109)'
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
  doc: 'Number of partitions to use. Must be at least 3. If under 3, it will be detected
    automatically. (default: -1)'
  type: string
  inputBinding:
    prefix: --nb_of_partitions
- id: kmm
  doc: 'KRANGE, --krange KRANGE KRANGE Range of K values to test when detecting K
    automatically. Default between 3 and 20. (default: [3, 20])'
  type: string
  inputBinding:
    prefix: -Kmm
- id: icl_margin
  doc: "K is detected automatically by maximizing ICL. However at some point the ICL\
    \ reaches a plateau. Therefore we are looking for the minimal value of K without\
    \ significative gain from the larger values of K measured by ICL. For that we\
    \ take the lowest K that is found within a given 'margin' of the maximal ICL value.\
    \ Basically, change this option only if you truly understand it, otherwise just\
    \ leave it be. (default: 0.05)"
  type: string
  inputBinding:
    prefix: --ICL_margin
- id: draw_icl
  doc: 'Use if you can to draw the ICL curve for all of the tested K values. Will
    not be done if K is given. (default: False)'
  type: boolean
  inputBinding:
    prefix: --draw_ICL
- id: keep_tmp_files
  doc: 'Use if you want to keep the temporary NEM files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp_files
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
- partition
