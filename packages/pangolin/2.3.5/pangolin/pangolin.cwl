class: CommandLineTool
id: pangolin.cwl
inputs:
- id: in_outdir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_outfile
  doc: 'Optional output file name. Default: lineage_report.csv'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_alignment
  doc: Optional alignment output.
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_datadir
  doc: "Data directory minimally containing a fasta alignment\nand guide tree"
  type: Directory?
  inputBinding:
    prefix: --datadir
- id: in_tempdir
  doc: "Specify where you want the temp stuff to go. Default:\n$TMPDIR"
  type: string?
  inputBinding:
    prefix: --tempdir
- id: in_no_temp
  doc: Output all intermediate files, for dev purposes.
  type: boolean?
  inputBinding:
    prefix: --no-temp
- id: in_decompress_model
  doc: "Permanently decompress the model file to save time\nrunning pangolin."
  type: boolean?
  inputBinding:
    prefix: --decompress-model
- id: in_max_am_big
  doc: "Maximum proportion of Ns allowed for pangolin to\nattempt assignment. Default:\
    \ 0.5"
  type: long?
  inputBinding:
    prefix: --max-ambig
- id: in_min_length
  doc: "Minimum query length allowed for pangolin to attempt\nassignment. Default:\
    \ 10000"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_pan_guilin
  doc: Run web-app version of pangolin
  type: boolean?
  inputBinding:
    prefix: --panGUIlin
- id: in_verbose
  doc: Print lots of stuff to screen
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_pango_learn_version
  doc: show pangoLEARN's version number and exit
  type: boolean?
  inputBinding:
    prefix: --pangoLEARN-version
- id: in_update
  doc: "Automatically updates to latest release of pangolin\nand pangoLEARN, then\
    \ exits\n"
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_query
  doc: Query fasta file of sequences to analyse.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_outfile
  doc: 'Optional output file name. Default: lineage_report.csv'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.5--py_0
cwlVersion: v1.1
baseCommand:
- pangolin
