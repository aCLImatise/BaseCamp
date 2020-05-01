#!/usr/bin/env cwl-runner

baseCommand:
- fastq-dl
class: CommandLineTool
cwlVersion: v1.0
id: fastq-dl
inputs:
- doc: 'Path to the Aspera Connect tool "ascp" (Default: "which ascp")'
  id: aspera
  inputBinding:
    prefix: --aspera
  type: string
- doc: Path to Aspera Connect private key, if not given, guess based on ascp path
  id: aspera_key
  inputBinding:
    prefix: --aspera_key
  type: string
- doc: 'Speed at which Aspera Connect will download. (Default: 100M)'
  id: aspera_speed
  inputBinding:
    prefix: --aspera_speed
  type: string
- doc: Query is a Study.
  id: is_study
  inputBinding:
    prefix: --is_study
  type: boolean
- doc: Query is an Experiment.
  id: is_experiment
  inputBinding:
    prefix: --is_experiment
  type: boolean
- doc: Query is a Run.
  id: is_run
  inputBinding:
    prefix: --is_run
  type: boolean
- doc: Group Runs by experiment accession.
  id: group_by_experiment
  inputBinding:
    prefix: --group_by_experiment
  type: boolean
- doc: Group Runs by sample accession.
  id: group_by_sample
  inputBinding:
    prefix: --group_by_sample
  type: boolean
- doc: 'Directory to output downloads to. (Default: ./)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Prefix to use for naming log files (Default: fastq)'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: 'Maximum number of download attempts (Default: 10)'
  id: max_attempts
  inputBinding:
    prefix: --max_attempts
  type: long
- doc: 'Total cpus used for downloading from SRA (Default: 1)'
  id: cpus
  inputBinding:
    prefix: --cpus
  type: long
- doc: FTP only downloads.
  id: ftp_only
  inputBinding:
    prefix: --ftp_only
  type: boolean
- doc: Do not attempt to fall back on ENA if SRA download does not work (e.g. missing
    FASTQ).
  id: sra_only
  inputBinding:
    prefix: --sra_only
  type: boolean
- doc: Only critical errors will be printed.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: Print debug related text.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Skip downloads, print what will be downloaded.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
