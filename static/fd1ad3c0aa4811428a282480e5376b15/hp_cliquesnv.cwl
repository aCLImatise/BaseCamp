class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hp_cliquesnv.cwl
inputs:
- id: fq_one
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq1
- id: fq_two
  doc: Fastq file with read 2
  type: string
  inputBinding:
    prefix: --fq2
- id: f_qu
  doc: Fastq file with unpaired reads
  type: string
  inputBinding:
    prefix: --fqU
- id: ref_fa
  doc: Reference FASTA file
  type: string
  inputBinding:
    prefix: --ref_fa
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: jar_dir
  doc: 'Path to clique-snv.jar (existing) (Default: current directory) (default: .)'
  type: string
  inputBinding:
    prefix: --jardir
- id: o_two_two_min
  doc: minimum threshold for O22 value
  type: string
  inputBinding:
    prefix: --O22min
- id: o_two_two_min_freq
  doc: minimum threshold for O22 frequency relative to read coverage
  type: string
  inputBinding:
    prefix: --O22minfreq
- id: print_log
  doc: 'Print log data to console (default: False)'
  type: boolean
  inputBinding:
    prefix: --printlog
- id: merging
  doc: 'Cliques merging algorithm: accurate or fast'
  type: string
  inputBinding:
    prefix: --merging
- id: fast_a_format
  doc: 'Fasta defline format: short or extended, add number at end to adjust precision
    of frequency (default: extended4)'
  type: string
  inputBinding:
    prefix: --fasta_format
- id: output_start
  doc: Output start position
  type: string
  inputBinding:
    prefix: --outputstart
- id: output_end
  doc: Output end position
  type: string
  inputBinding:
    prefix: --outputend
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Name for log file (output)
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
- id: keep_tmp
  doc: 'Do not delete temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_cliquesnv
