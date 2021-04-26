class: CommandLineTool
id: bcbio_prepare_samples.py.cwl
inputs:
- id: in_csv
  doc: csv file with metadata
  type: File?
  inputBinding:
    prefix: --csv
- id: in_out
  doc: output dir
  type: string?
  inputBinding:
    prefix: --out
- id: in_force_single
  doc: Treat all files as single reads
  type: boolean?
  inputBinding:
    prefix: --force-single
- id: in_separators
  doc: "[SEPARATORS [SEPARATORS ...]]\nSpace separated list of separators that indicates\n\
    paired files."
  type: boolean?
  inputBinding:
    prefix: --separators
- id: in_remove_source
  doc: Remove original files.
  type: boolean?
  inputBinding:
    prefix: --remove-source
- id: in_num_cores
  doc: Number of concurrent jobs to process.
  type: long?
  inputBinding:
    prefix: --numcores
- id: in_cores_per_job
  doc: Number of cores to use.
  type: long?
  inputBinding:
    prefix: --cores-per-job
- id: in_memory_per_job
  doc: Memory in GB to reserve per job.
  type: string?
  inputBinding:
    prefix: --memory-per-job
- id: in_timeout
  doc: Time to wait before giving up starting.
  type: string?
  inputBinding:
    prefix: --timeout
- id: in_retries
  doc: "Number of retries of failed tasks during distributed\nprocessing. Default\
    \ 0 (no retries)"
  type: long?
  inputBinding:
    prefix: --retries
- id: in_scheduler
  doc: Type of scheduler to use.
  type: string?
  inputBinding:
    prefix: --scheduler
- id: in_resources
  doc: Extra scheduler resource flags.
  type: string?
  inputBinding:
    prefix: --resources
- id: in_queue
  doc: Queue to submit jobs to.
  type: string?
  inputBinding:
    prefix: --queue
- id: in_tag
  doc: Tag name to label jobs on the cluster
  type: string?
  inputBinding:
    prefix: --tag
- id: in_parallel_type
  doc: "Run with iptyhon\n"
  type: string?
  inputBinding:
    prefix: --paralleltype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- bcbio_prepare_samples.py
