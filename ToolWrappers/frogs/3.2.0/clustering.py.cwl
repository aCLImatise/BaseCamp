class: CommandLineTool
id: clustering.py.cwl
inputs:
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_distance
  doc: "Maximum distance between sequences in each aggregation\nstep. RECOMMENDED\
    \ : d=1 in combination with\n--fastidious option [Default: 1]"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_fastidious
  doc: "use the fastidious option of swarm to refine OTU.\nRECOMMENDED in combination\
    \ with a distance equal to 1\n(-d). it is only usable with d=1 and mutually\n\
    exclusive with --denoising."
  type: boolean?
  inputBinding:
    prefix: --fastidious
- id: in_denoising
  doc: "denoise data by clustering read with distance=1 before\nperform real clustering.\
    \ It is mutually exclusive with\n--fastidious."
  type: boolean?
  inputBinding:
    prefix: --denoising
- id: in_input_fast_a
  doc: 'The sequences file (format: FASTA).'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_input_count
  doc: "The count file for 'fasta-file' (format: TSV). It\ncontains the count by sample\
    \ for each sequence."
  type: File?
  inputBinding:
    prefix: --input-count
- id: in_output_biom
  doc: "This output file will contain the abondance by sample\nfor each cluster (format:\
    \ BIOM). [Default:\nclustering_abundance.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: "This output file will contain the seed sequence for\neach cluster (format:\
    \ FASTA). [Default:\nclustering_seeds.fasta]"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_output_compo
  doc: "This output file will contain the composition of each\ncluster (format: TSV).\
    \ One Line is a cluster ; each\ncolumn is a sequence ID. [Default:\nclustering_swarms_composition.tsv]"
  type: File?
  inputBinding:
    prefix: --output-compo
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_biom
  doc: "This output file will contain the abondance by sample\nfor each cluster (format:\
    \ BIOM). [Default:\nclustering_abundance.biom]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_biom)
- id: out_output_fast_a
  doc: "This output file will contain the seed sequence for\neach cluster (format:\
    \ FASTA). [Default:\nclustering_seeds.fasta]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
- id: out_output_compo
  doc: "This output file will contain the composition of each\ncluster (format: TSV).\
    \ One Line is a cluster ; each\ncolumn is a sequence ID. [Default:\nclustering_swarms_composition.tsv]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_compo)
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.0--py37_0
cwlVersion: v1.1
baseCommand:
- clustering.py
