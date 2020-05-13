class: CommandLineTool
id: slurm_srst2.py.cwl
inputs:
- id: wall_time
  doc: wall time (default 0-1:0 = 1 h)
  type: string
  inputBinding:
    prefix: --walltime
- id: memory
  doc: mem (default 4096 = 4gb)
  type: string
  inputBinding:
    prefix: --memory
- id: run_dir
  doc: directory to run in (default current dir)
  type: string
  inputBinding:
    prefix: --rundir
- id: threads
  doc: number of CPUs per job
  type: string
  inputBinding:
    prefix: --threads
- id: script
  doc: path to srst2.py
  type: string
  inputBinding:
    prefix: --script
- id: output
  doc: identifier for outputs (will be combined with read set identifiers)
  type: string
  inputBinding:
    prefix: --output
- id: input_se
  doc: Single end read file(s) for analysing (may be gzipped)
  type: string[]
  inputBinding:
    prefix: --input_se
- id: input_pe
  doc: Paired end read files for analysing (may be gzipped)
  type: string[]
  inputBinding:
    prefix: --input_pe
- id: forward
  doc: Designator for forward reads (only used if NOT in MiSeq format sample_S1_L001_R1_001.fastq.gz;
    otherwise default is _1, i.e. expect forward reads as sample_1.fastq.gz)
  type: string
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Designator for reverse reads (only used if NOT in MiSeq format sample_S1_L001_R2_001.fastq.gz;
    otherwise default is _2, i.e. expect forward reads as sample_2.fastq.gz)
  type: string
  inputBinding:
    prefix: --reverse
- id: other_args
  doc: string containing all other arguments to pass to srst2
  type: string
  inputBinding:
    prefix: --other_args
outputs: []
cwlVersion: v1.1
baseCommand:
- slurm_srst2.py
