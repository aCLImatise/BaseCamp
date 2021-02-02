class: CommandLineTool
id: merge_midas.py_species.cwl
inputs:
- id: in_input_sample_output
  doc: Input to sample directories output by run_midas.py; see '-t' for details
  type: string
  inputBinding:
    prefix: -i
- id: in_specify_one_followinglist
  doc: "Specify one of the following:\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\n\
    dir: -i is a directory containing all samples (ex: /samples)\nfile: -i is a file\
    \ of paths to samples (ex: /sample_paths.txt)"
  type: File
  inputBinding:
    prefix: -t
- id: in_path_reference_default
  doc: "Path to reference database\nBy default the MIDAS_DB environmental variable\
    \ is used"
  type: File
  inputBinding:
    prefix: -d
- id: in_sample_depth
  doc: Minimum per-sample marker-gene-depth for estimating species prevalence (1.0)
  type: double
  inputBinding:
    prefix: --sample_depth
- id: in_max_samples
  doc: "Maximum number of samples to process.\nUseful for testing (use all)"
  type: long
  inputBinding:
    prefix: --max_samples
- id: in_outdir
  doc: Directory for output files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_midas.py
- species
