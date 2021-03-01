class: CommandLineTool
id: slurm_srst2.py.cwl
inputs:
- id: in_output
  doc: '[--input_se INPUT_SE [INPUT_SE ...]]'
  type: string?
  inputBinding:
    prefix: --output
- id: in_wall_time
  doc: wall time (default 0-1:0 = 1 h)
  type: long?
  inputBinding:
    prefix: --walltime
- id: in_memory
  doc: mem (default 4096 = 4gb)
  type: long?
  inputBinding:
    prefix: --memory
- id: in_run_dir
  doc: directory to run in (default current dir)
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_threads
  doc: number of CPUs per job
  type: long?
  inputBinding:
    prefix: --threads
- id: in_script
  doc: path to srst2.py
  type: File?
  inputBinding:
    prefix: --script
- id: in_input_se
  doc: Single end read file(s) for analysing (may be gzipped)
  type: string[]
  inputBinding:
    prefix: --input_se
- id: in_input_pe
  doc: Paired end read files for analysing (may be gzipped)
  type: string[]
  inputBinding:
    prefix: --input_pe
- id: in_forward
  doc: "Designator for forward reads (only used if NOT in\nMiSeq format sample_S1_L001_R1_001.fastq.gz;\
    \ otherwise\ndefault is _1, i.e. expect forward reads as\nsample_1.fastq.gz)"
  type: long?
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: "Designator for reverse reads (only used if NOT in\nMiSeq format sample_S1_L001_R2_001.fastq.gz;\
    \ otherwise\ndefault is _2, i.e. expect forward reads as\nsample_2.fastq.gz)"
  type: long?
  inputBinding:
    prefix: --reverse
- id: in_other_args
  doc: "string containing all other arguments to pass to srst2\n"
  type: string?
  inputBinding:
    prefix: --other_args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- slurm_srst2.py
