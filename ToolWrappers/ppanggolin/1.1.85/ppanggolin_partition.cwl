class: CommandLineTool
id: ppanggolin_partition.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File
  inputBinding:
    prefix: --pangenome
- id: in_beta
  doc: "beta is the strength of the smoothing using the graph\ntopology during partitionning.\
    \ 0 will deactivate\nspatial smoothing. (default: 2.5)"
  type: double
  inputBinding:
    prefix: --beta
- id: in_max_degree_smoothing
  doc: "max. degree of the nodes to be included in the\nsmoothing process. (default:\
    \ 10)"
  type: long
  inputBinding:
    prefix: --max_degree_smoothing
- id: in_output
  doc: "Output directory (default:\nppanggolin_output_DATE2020-09-09_HOUR23.40.01_PID629)"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_free_dispersion
  doc: "use if the dispersion around the centroid vector of\neach partition during\
    \ must be free. It will be the\nsame for all organisms by default. (default: False)"
  type: boolean
  inputBinding:
    prefix: --free_dispersion
- id: in_chunk_size
  doc: "Size of the chunks when performing partitionning using\nchunks of organisms.\
    \ Chunk partitionning will be used\nautomatically if the number of genomes is\
    \ above this\nnumber. (default: 500)"
  type: long
  inputBinding:
    prefix: --chunk_size
- id: in_nb_of_partitions
  doc: "Number of partitions to use. Must be at least 3. If\nunder 3, it will be detected\
    \ automatically. (default:\n-1)"
  type: long
  inputBinding:
    prefix: --nb_of_partitions
- id: in_kmm
  doc: "KRANGE, --krange KRANGE KRANGE\nRange of K values to test when detecting K\n\
    automatically. Default between 3 and 20. (default: [3,\n20])"
  type: long
  inputBinding:
    prefix: -Kmm
- id: in_icl_margin
  doc: "K is detected automatically by maximizing ICL. However\nat some point the\
    \ ICL reaches a plateau. Therefore we\nare looking for the minimal value of K\
    \ without\nsignificative gain from the larger values of K\nmeasured by ICL. For\
    \ that we take the lowest K that is\nfound within a given 'margin' of the maximal\
    \ ICL\nvalue. Basically, change this option only if you truly\nunderstand it,\
    \ otherwise just leave it be. (default:\n0.05)"
  type: double
  inputBinding:
    prefix: --ICL_margin
- id: in_draw_icl
  doc: "Use if you can to draw the ICL curve for all of the\ntested K values. Will\
    \ not be done if K is given.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --draw_ICL
- id: in_keep_tmp_files
  doc: "Use if you want to keep the temporary NEM files\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --keep_tmp_files
- id: in_seed
  doc: 'seed used to generate random numbers (default: 42)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --log
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory (default:\nppanggolin_output_DATE2020-09-09_HOUR23.40.01_PID629)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- ppanggolin
- partition
