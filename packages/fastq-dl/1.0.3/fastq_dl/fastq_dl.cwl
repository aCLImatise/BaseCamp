class: CommandLineTool
id: fastq_dl.cwl
inputs:
- id: in_aspera
  doc: "Path to the Aspera Connect tool \"ascp\" (Default:\n\"which ascp\")"
  type: File
  inputBinding:
    prefix: --aspera
- id: in_aspera_key
  doc: "Path to Aspera Connect private key, if not given,\nguess based on ascp path"
  type: File
  inputBinding:
    prefix: --aspera_key
- id: in_aspera_speed
  doc: "Speed at which Aspera Connect will download. (Default:\n100M)"
  type: long
  inputBinding:
    prefix: --aspera_speed
- id: in_is_study
  doc: Query is a Study.
  type: boolean
  inputBinding:
    prefix: --is_study
- id: in_is_experiment
  doc: Query is an Experiment.
  type: boolean
  inputBinding:
    prefix: --is_experiment
- id: in_is_run
  doc: Query is a Run.
  type: boolean
  inputBinding:
    prefix: --is_run
- id: in_group_by_experiment
  doc: Group Runs by experiment accession.
  type: boolean
  inputBinding:
    prefix: --group_by_experiment
- id: in_group_by_sample
  doc: Group Runs by sample accession.
  type: boolean
  inputBinding:
    prefix: --group_by_sample
- id: in_outdir
  doc: 'Directory to output downloads to. (Default: ./)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: 'Prefix to use for naming log files (Default: fastq)'
  type: string
  inputBinding:
    prefix: --prefix
- id: in_max_attempts
  doc: 'Maximum number of download attempts (Default: 10)'
  type: long
  inputBinding:
    prefix: --max_attempts
- id: in_cpus
  doc: 'Total cpus used for downloading from SRA (Default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_ftp_only
  doc: FTP only downloads.
  type: boolean
  inputBinding:
    prefix: --ftp_only
- id: in_sra_only
  doc: "Do not attempt to fall back on ENA if SRA download\ndoes not work (e.g. missing\
    \ FASTQ)."
  type: boolean
  inputBinding:
    prefix: --sra_only
- id: in_silent
  doc: Only critical errors will be printed.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: Print debug related text.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Skip downloads, print what will be downloaded.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_accession
  doc: "ENA/SRA accession to query. (Study, Experiment, or Run\naccession)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Directory to output downloads to. (Default: ./)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- fastq-dl
