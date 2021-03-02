class: CommandLineTool
id: hp_cliquesnv.cwl
inputs:
- id: in_fq_one
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 2
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_f_qu
  doc: Fastq file with unpaired reads
  type: File?
  inputBinding:
    prefix: --fqU
- id: in_ref_fa
  doc: Reference FASTA file
  type: File?
  inputBinding:
    prefix: --ref_fa
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_jar_dir
  doc: "Path to clique-snv.jar (existing) (Default: current\ndirectory) (default:\
    \ .)"
  type: File?
  inputBinding:
    prefix: --jardir
- id: in_o_two_two_min
  doc: minimum threshold for O22 value
  type: long?
  inputBinding:
    prefix: --O22min
- id: in_o_two_two_min_freq
  doc: "minimum threshold for O22 frequency relative to read\ncoverage"
  type: long?
  inputBinding:
    prefix: --O22minfreq
- id: in_print_log
  doc: 'Print log data to console (default: False)'
  type: boolean?
  inputBinding:
    prefix: --printlog
- id: in_merging
  doc: 'Cliques merging algorithm: accurate or fast'
  type: string?
  inputBinding:
    prefix: --merging
- id: in_fast_a_format
  doc: "Fasta defline format: short or extended, add number at\nend to adjust precision\
    \ of frequency (default:\nextended4)"
  type: long?
  inputBinding:
    prefix: --fasta_format
- id: in_output_start
  doc: Output start position
  type: string?
  inputBinding:
    prefix: --outputstart
- id: in_output_end
  doc: Output end position
  type: string?
  inputBinding:
    prefix: --outputend
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Name for log file (output)
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --ncpu
- id: in_keep_tmp
  doc: 'Do not delete temporary directory (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Name for log file (output)
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hp_cliquesnv
