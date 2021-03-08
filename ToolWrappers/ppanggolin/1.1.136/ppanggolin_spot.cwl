class: CommandLineTool
id: ppanggolin_spot.cwl
inputs:
- id: in_output
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.02_PID1110)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_spot_graph
  doc: "Writes a graph in a .gexf format of pairs of blocks of\nsingle copy markers\
    \ flanking RGPs, supposedly\nbelonging to the same hotspot (default: False)"
  type: boolean?
  inputBinding:
    prefix: --spot_graph
- id: in_draw_hotspots
  doc: "Draws a figure representing all of the hotspots\nsyntenies (default: False)"
  type: boolean?
  inputBinding:
    prefix: --draw_hotspots
- id: in_overlapping_match
  doc: "The number of 'missing' persistent genes allowed when\ncomparing flanking\
    \ genes during hotspot computations\n(default: 2)"
  type: long?
  inputBinding:
    prefix: --overlapping_match
- id: in_set_size
  doc: "Number of single copy markers to use as flanking genes\nfor a RGP during hotspot\
    \ computation (default: 3)"
  type: long?
  inputBinding:
    prefix: --set_size
- id: in_exact_match_size
  doc: "Number of perfecty matching flanking single copy\nmarkers required to associate\
    \ RGPs during hotspot\ncomputation (Ex: If set to 1, two RGPs are in the same\n\
    hotspot if both their 1st flanking genes are the same)\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --exact_match_size
- id: in_interest
  doc: "Comma separated list of elements to flag when drawing\nhotspots (default:\
    \ )"
  type: string?
  inputBinding:
    prefix: --interest
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
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
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
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
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.02_PID1110)"
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- spot
