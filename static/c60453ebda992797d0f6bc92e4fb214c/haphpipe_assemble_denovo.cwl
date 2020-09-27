class: CommandLineTool
id: haphpipe_assemble_denovo.cwl
inputs:
- id: in_fq_one
  doc: Fastq file with read 1
  type: long
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 2
  type: long
  inputBinding:
    prefix: --fq2
- id: in_f_qu
  doc: Fastq file with unpaired reads
  type: File
  inputBinding:
    prefix: --fqU
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_no_error_correction
  doc: "Do not perform error correction [spades only]\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --no_error_correction
- id: in_subsample
  doc: Use a subsample of reads for assembly.
  type: string
  inputBinding:
    prefix: --subsample
- id: in_seed
  doc: "Seed for random number generator (ignored if not\nsubsampling)."
  type: long
  inputBinding:
    prefix: --seed
- id: in_n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: long
  inputBinding:
    prefix: --ncpu
- id: in_keep_tmp
  doc: 'Keep temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- haphpipe
- assemble_denovo
