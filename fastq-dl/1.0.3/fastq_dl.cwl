class: CommandLineTool
id: fastq_dl.cwl
inputs:
- id: aspera
  doc: 'Path to the Aspera Connect tool "ascp" (Default: "which ascp")'
  type: string
  inputBinding:
    prefix: --aspera
- id: aspera_key
  doc: Path to Aspera Connect private key, if not given, guess based on ascp path
  type: string
  inputBinding:
    prefix: --aspera_key
- id: aspera_speed
  doc: 'Speed at which Aspera Connect will download. (Default: 100M)'
  type: string
  inputBinding:
    prefix: --aspera_speed
- id: is_study
  doc: Query is a Study.
  type: boolean
  inputBinding:
    prefix: --is_study
- id: is_experiment
  doc: Query is an Experiment.
  type: boolean
  inputBinding:
    prefix: --is_experiment
- id: is_run
  doc: Query is a Run.
  type: boolean
  inputBinding:
    prefix: --is_run
- id: group_by_experiment
  doc: Group Runs by experiment accession.
  type: boolean
  inputBinding:
    prefix: --group_by_experiment
- id: group_by_sample
  doc: Group Runs by sample accession.
  type: boolean
  inputBinding:
    prefix: --group_by_sample
- id: outdir
  doc: 'Directory to output downloads to. (Default: ./)'
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: 'Prefix to use for naming log files (Default: fastq)'
  type: string
  inputBinding:
    prefix: --prefix
- id: max_attempts
  doc: 'Maximum number of download attempts (Default: 10)'
  type: long
  inputBinding:
    prefix: --max_attempts
- id: cpus
  doc: 'Total cpus used for downloading from SRA (Default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: ftp_only
  doc: FTP only downloads.
  type: boolean
  inputBinding:
    prefix: --ftp_only
- id: sra_only
  doc: Do not attempt to fall back on ENA if SRA download does not work (e.g. missing
    FASTQ).
  type: boolean
  inputBinding:
    prefix: --sra_only
- id: silent
  doc: Only critical errors will be printed.
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: Print debug related text.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Skip downloads, print what will be downloaded.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-dl
