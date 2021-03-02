class: CommandLineTool
id: ppanggolin_rarefaction.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_beta
  doc: "beta is the strength of the smoothing using the graph\ntopology during partitionning.\
    \ 0 will deactivate\nspatial smoothing. (default: 2.5)"
  type: double?
  inputBinding:
    prefix: --beta
- id: in_depth
  doc: "Number of samplings at each sampling point (default:\n30)"
  type: long?
  inputBinding:
    prefix: --depth
- id: in_min
  doc: 'Minimum number of organisms in a sample (default: 1)'
  type: long?
  inputBinding:
    prefix: --min
- id: in_max
  doc: "Maximum number of organisms in a sample (if above the\nnumber of provided\
    \ organisms, the provided organisms\nwill be the maximum) (default: 100)"
  type: long?
  inputBinding:
    prefix: --max
- id: in_max_degree_smoothing
  doc: "max. degree of the nodes to be included in the\nsmoothing process. (default:\
    \ 10)"
  type: long?
  inputBinding:
    prefix: --max_degree_smoothing
- id: in_output
  doc: "Output directory (default:\nppanggolin_output_DATE2020-09-09_HOUR23.41.24_PID2017)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_free_dispersion
  doc: "use if the dispersion around the centroid vector of\neach partition during\
    \ must be free. It will be the\nsame for all organisms by default. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --free_dispersion
- id: in_chunk_size
  doc: "Size of the chunks when performing partitionning using\nchunks of organisms.\
    \ Chunk partitionning will be used\nautomatically if the number of genomes is\
    \ above this\nnumber. (default: 500)"
  type: long?
  inputBinding:
    prefix: --chunk_size
- id: in_nb_of_partitions
  doc: "Number of partitions to use. Must be at least 3. By\ndefault reuse K if it\
    \ exists else compute it.\n(default: -1)"
  type: long?
  inputBinding:
    prefix: --nb_of_partitions
- id: in_re_estimate_k
  doc: "Will recompute the number of partitions for each\nsample (between the values\
    \ provided by --krange) (VERY\nintensive. Can take a long time.) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --reestimate_K
- id: in_kmm
  doc: "KRANGE, --krange KRANGE KRANGE\nRange of K values to test when detecting K\n\
    automatically. Default between 3 and the K previously\ncomputed if there is one,\
    \ or 20 if there are none.\n(default: [3, -1])"
  type: long?
  inputBinding:
    prefix: -Kmm
- id: in_soft_core
  doc: 'Soft core threshold (default: 0.95)'
  type: double?
  inputBinding:
    prefix: --soft_core
- id: in_seed
  doc: 'seed used to generate random numbers (default: 42)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory (default:\nppanggolin_output_DATE2020-09-09_HOUR23.41.24_PID2017)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- rarefaction
