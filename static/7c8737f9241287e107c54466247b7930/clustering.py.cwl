class: CommandLineTool
id: clustering.py.cwl
inputs:
- id: in_distance
  doc: "Maximum distance between sequences in each aggregation\nstep. [Default: 2]"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_denoising
  doc: "denoise data by clustering read with distance=1 before\nperform real clustering"
  type: boolean?
  inputBinding:
    prefix: --denoising
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_fast_a
  doc: 'The sequences file (format: fasta).'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_input_count
  doc: "The count file for 'fasta-file' (format: count). It\ncontains the count by\
    \ sample for each sequence."
  type: File?
  inputBinding:
    prefix: --input-count
- id: in_output_biom
  doc: "This output file will contain the abondance by sample\nfor each cluster (format:\
    \ BIOM). [Default:\nswarms_abundance.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: "This output file will contain the seed sequence for\neach cluster (format:\
    \ fasta). [Default: seeds.fasta]"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_output_compo
  doc: "This output file will contain the composition of each\ncluster (format: TSV).\
    \ One Line is a cluster ; each\ncolumn is a sequence ID. [Default:\nswarms_composition.tsv]"
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
    \ BIOM). [Default:\nswarms_abundance.biom]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_biom)
- id: out_output_fast_a
  doc: "This output file will contain the seed sequence for\neach cluster (format:\
    \ fasta). [Default: seeds.fasta]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
- id: out_output_compo
  doc: "This output file will contain the composition of each\ncluster (format: TSV).\
    \ One Line is a cluster ; each\ncolumn is a sequence ID. [Default:\nswarms_composition.tsv]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_compo)
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- clustering.py
