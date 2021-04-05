class: CommandLineTool
id: poppunk_batch_mst.py.cwl
inputs:
- id: in_r_files
  doc: Sample names and locations (as for poppunk --r-files)
  type: string?
  inputBinding:
    prefix: --r-files
- id: in_batch_file
  doc: "Single column list of batches to process samples in\n--r-files in"
  type: File?
  inputBinding:
    prefix: --batch-file
- id: in_n_batches
  doc: "Number of batches for process if --batch-file is not\nspecified"
  type: long?
  inputBinding:
    prefix: --n-batches
- id: in_info_csv
  doc: CSV containing information about sequences
  type: string?
  inputBinding:
    prefix: --info-csv
- id: in_output
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_previous_clustering
  doc: CSV file with previous clusters in MST drawing
  type: File?
  inputBinding:
    prefix: --previous-clustering
- id: in_iterative_mst
  doc: Re-calculate the MST for each batch
  type: boolean?
  inputBinding:
    prefix: --iterative-mst
- id: in_keep_intermediates
  doc: Retain the outputs of each batch
  type: boolean?
  inputBinding:
    prefix: --keep-intermediates
- id: in_use_batch_names
  doc: Name the stored outputs of each batch
  type: boolean?
  inputBinding:
    prefix: --use-batch-names
- id: in_rank
  doc: "Comma separated ranks used to fit lineage model (list\nof ints)"
  type: string?
  inputBinding:
    prefix: --rank
- id: in_threads
  doc: Number of threads for parallelisation (int)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_gpu_dist
  doc: Use GPU for distance calculations
  type: boolean?
  inputBinding:
    prefix: --gpu-dist
- id: in_gpu_graph
  doc: Use GPU for network analysis
  type: boolean?
  inputBinding:
    prefix: --gpu-graph
- id: in_deviceid
  doc: GPU device ID (int)
  type: long?
  inputBinding:
    prefix: --deviceid
- id: in_db_args
  doc: Other arguments to pass to poppunk. e.g. '--min-k 13
  type: long?
  inputBinding:
    prefix: --db-args
- id: in_model_args
  doc: Other arguments to pass to lineage model fit
  type: string?
  inputBinding:
    prefix: --model-args
- id: in_assign_args
  doc: Other arguments to pass to poppunk_assign
  type: string?
  inputBinding:
    prefix: --assign-args
- id: in_qc_filter
  doc: "Behaviour following sequence QC step: \"stop\"\n[default], \"prune\" (analyse\
    \ data passing QC), or\n\"continue\" (analyse all data)"
  type: string?
  inputBinding:
    prefix: --qc-filter
- id: in_retain_failures
  doc: "Retain sketches of genomes that do not pass QC filters\nin separate database\
    \ [default = False]"
  type: boolean?
  inputBinding:
    prefix: --retain-failures
- id: in_max_a_dist
  doc: Maximum accessory distance to permit [default = 0.5]
  type: long?
  inputBinding:
    prefix: --max-a-dist
- id: in_length_sigma
  doc: "Number of standard deviations of length distribution\nbeyond which sequences\
    \ will be excluded [default = 5]"
  type: long?
  inputBinding:
    prefix: --length-sigma
- id: in_length_range
  doc: "LENGTH_RANGE\nAllowed length range, outside of which sequences will\nbe excluded\
    \ [two values needed - lower and upper\nbounds]"
  type: long?
  inputBinding:
    prefix: --length-range
- id: in_prop_n
  doc: "Threshold ambiguous base proportion above which\nsequences will be excluded\
    \ [default = 0.1]"
  type: double?
  inputBinding:
    prefix: --prop-n
- id: in_upper_n
  doc: "Threshold ambiguous base count above which sequences\nwill be excluded"
  type: string?
  inputBinding:
    prefix: --upper-n
- id: in_pop_punk_exe
  doc: "Location of poppunk executable. Use 'python poppunk-\nrunner.py' to run from\
    \ source tree"
  type: string?
  inputBinding:
    prefix: --poppunk-exe
- id: in_assign_exe
  doc: "Location of poppunk_assign executable. Use 'python\npoppunk_assign-runner.py'\
    \ to run from source tree"
  type: string?
  inputBinding:
    prefix: --assign-exe
- id: in_mst_exe
  doc: "Location of poppunk executable. Use 'python\npoppunk_mst-runner.py' to run\
    \ from source tree\n"
  type: string?
  inputBinding:
    prefix: --mst-exe
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_batch_mst.py
