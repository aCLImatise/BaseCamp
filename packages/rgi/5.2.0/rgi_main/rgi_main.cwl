class: CommandLineTool
id: rgi_main.cwl
inputs:
- id: in_input_sequence
  doc: "input file must be in either FASTA (contig and\nprotein) or gzip format! e.g\
    \ myFile.fasta,\nmyFasta.fasta.gz"
  type: File?
  inputBinding:
    prefix: --input_sequence
- id: in_output_file
  doc: output folder and base filename
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_input_type
  doc: specify data input type (default = contig)
  type: string?
  inputBinding:
    prefix: --input_type
- id: in_alignment_tool
  doc: specify alignment tool (default = BLAST)
  type: string?
  inputBinding:
    prefix: --alignment_tool
- id: in_num_threads
  doc: "number of threads (CPUs) to use in the BLAST search\n(default=2)"
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_include_loose
  doc: include loose hits in addition to strict and perfect
  type: boolean?
  inputBinding:
    prefix: --include_loose
- id: in_local
  doc: "use local database (default: uses database in\nexecutable directory)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_clean
  doc: removes temporary files
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_low_quality
  doc: use for short contigs to predict partial genes
  type: boolean?
  inputBinding:
    prefix: --low_quality
- id: in_data
  doc: specify a data-type (default = NA)
  type: string?
  inputBinding:
    prefix: --data
- id: in_split_prodigal_jobs
  doc: "run multiple prodigal jobs simultaneously for contigs\nin a fasta file\n"
  type: boolean?
  inputBinding:
    prefix: --split_prodigal_jobs
- id: in_hits
  doc: --exclude_nudge       exclude hits nudged from loose to strict hits
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output folder and base filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- rgi
- main
