class: CommandLineTool
id: merge_midas.py_genes.cwl
inputs:
- id: in_input_sample_directories
  doc: Input to sample directories output by run_midas.py; see '-t' for details
  type: string?
  inputBinding:
    prefix: -i
- id: in_specify_one_ex
  doc: "Specify one of the following:\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\n\
    dir: -i is a directory containing all samples (ex: /samples)\nfile: -i is a file\
    \ of paths to samples (ex: /sample_paths.txt)"
  type: File?
  inputBinding:
    prefix: -t
- id: in_path_reference_databaseby
  doc: "Path to reference database.\nBy default, the MIDAS_DB environmental variable\
    \ is used"
  type: File?
  inputBinding:
    prefix: -d
- id: in_min_samples
  doc: All species with >= MIN_SAMPLES (1)
  type: long?
  inputBinding:
    prefix: --min_samples
- id: in_species_id
  doc: Comma-separated list of species ids
  type: string?
  inputBinding:
    prefix: --species_id
- id: in_max_species
  doc: Maximum number of species to merge. Useful for testing (use all)
  type: long?
  inputBinding:
    prefix: --max_species
- id: in_sample_depth
  doc: Minimum read-depth across all genes with non-zero coverage (1.0)
  type: double?
  inputBinding:
    prefix: --sample_depth
- id: in_max_samples
  doc: Maximum number of samples to process. Useful for testing (use all)
  type: long?
  inputBinding:
    prefix: --max_samples
- id: in_cluster_pid
  doc: "In the database, pan-genomes are defined at 6 different % identity clustering\
    \ cutoffs.\nCLUSTER_PID allows you to quantify gene content for any of these sets\
    \ of gene clusters.\nBy default, gene content is reported for genes clustered\
    \ at 95% identity"
  type: string?
  inputBinding:
    prefix: --cluster_pid
- id: in_min_copy
  doc: "Genes >= MIN_COPY are classified as present\nGenes < MIN_COPY are classified\
    \ as absent (0.35)"
  type: double?
  inputBinding:
    prefix: --min_copy
- id: in_outdir
  doc: "Directory for output files.\nA subdirectory will be created for each species_id"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge_midas.py
- genes
