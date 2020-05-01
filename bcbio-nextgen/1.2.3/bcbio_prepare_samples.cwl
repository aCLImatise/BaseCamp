#!/usr/bin/env cwl-runner

baseCommand:
- bcbio_prepare_samples.py
class: CommandLineTool
cwlVersion: v1.0
id: bcbio_prepare_samples.py
inputs:
- doc: csv file with metadata
  id: csv
  inputBinding:
    prefix: --csv
  type: string
- doc: output dir
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: Treat all files as single reads
  id: force_single
  inputBinding:
    prefix: --force-single
  type: boolean
- doc: '[SEPARATORS [SEPARATORS ...]] Space separated list of separators that indicates
    paired files.'
  id: separators
  inputBinding:
    prefix: --separators
  type: boolean
- doc: Remove original files.
  id: remove_source
  inputBinding:
    prefix: --remove-source
  type: boolean
- doc: Number of concurrent jobs to process.
  id: num_cores
  inputBinding:
    prefix: --numcores
  type: string
- doc: Number of cores to use.
  id: cores_per_job
  inputBinding:
    prefix: --cores-per-job
  type: string
- doc: Memory in GB to reserve per job.
  id: memory_per_job
  inputBinding:
    prefix: --memory-per-job
  type: string
- doc: Time to wait before giving up starting.
  id: timeout
  inputBinding:
    prefix: --timeout
  type: string
- doc: Number of retries of failed tasks during distributed processing. Default 0
    (no retries)
  id: retries
  inputBinding:
    prefix: --retries
  type: string
- doc: Type of scheduler to use.
  id: scheduler
  inputBinding:
    prefix: --scheduler
  type: string
- doc: Extra scheduler resource flags.
  id: resources
  inputBinding:
    prefix: --resources
  type: string
- doc: Queue to submit jobs to.
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: Tag name to label jobs on the cluster
  id: tag
  inputBinding:
    prefix: --tag
  type: string
- doc: Run with iptyhon
  id: parallel_type
  inputBinding:
    prefix: --paralleltype
  type: string
