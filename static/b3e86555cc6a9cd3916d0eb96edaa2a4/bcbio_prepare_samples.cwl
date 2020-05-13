class: CommandLineTool
id: bcbio_prepare_samples.py.cwl
inputs:
- id: csv
  doc: csv file with metadata
  type: string
  inputBinding:
    prefix: --csv
- id: out
  doc: output dir
  type: string
  inputBinding:
    prefix: --out
- id: force_single
  doc: Treat all files as single reads
  type: boolean
  inputBinding:
    prefix: --force-single
- id: separators
  doc: '[SEPARATORS [SEPARATORS ...]] Space separated list of separators that indicates
    paired files.'
  type: boolean
  inputBinding:
    prefix: --separators
- id: remove_source
  doc: Remove original files.
  type: boolean
  inputBinding:
    prefix: --remove-source
- id: num_cores
  doc: Number of concurrent jobs to process.
  type: string
  inputBinding:
    prefix: --numcores
- id: cores_per_job
  doc: Number of cores to use.
  type: string
  inputBinding:
    prefix: --cores-per-job
- id: memory_per_job
  doc: Memory in GB to reserve per job.
  type: string
  inputBinding:
    prefix: --memory-per-job
- id: timeout
  doc: Time to wait before giving up starting.
  type: string
  inputBinding:
    prefix: --timeout
- id: retries
  doc: Number of retries of failed tasks during distributed processing. Default 0
    (no retries)
  type: string
  inputBinding:
    prefix: --retries
- id: scheduler
  doc: Type of scheduler to use.
  type: string
  inputBinding:
    prefix: --scheduler
- id: resources
  doc: Extra scheduler resource flags.
  type: string
  inputBinding:
    prefix: --resources
- id: queue
  doc: Queue to submit jobs to.
  type: string
  inputBinding:
    prefix: --queue
- id: tag
  doc: Tag name to label jobs on the cluster
  type: string
  inputBinding:
    prefix: --tag
- id: parallel_type
  doc: Run with iptyhon
  type: string
  inputBinding:
    prefix: --paralleltype
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio_prepare_samples.py
