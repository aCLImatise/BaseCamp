class: CommandLineTool
id: hicup_mapper.cwl
inputs:
- id: in_bowtie
  doc: Specify the path to Bowtie
  type: boolean?
  inputBinding:
    prefix: --bowtie
- id: in_bowtie_two
  doc: Specify the path to Bowtie 2
  type: boolean?
  inputBinding:
    prefix: --bowtie2
- id: in_config
  doc: Specify the configuration file
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_format
  doc: "Specify FASTQ format\nOptions: Sanger, Solexa_Illumina_1.0, Illumina_1.3,\
    \ Illumina_1.5"
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_index
  doc: Path to the relevant reference genome Bowtie/Bowtie2 indices
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_outdir
  doc: Directory to write output files
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress progress reports (except warnings)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: "Specify the number of threads, allowing simultaneous processing\nof different\
    \ files (default: 1)"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_zip
  doc: Compress output
  type: boolean?
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory to write output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- hicup_mapper
