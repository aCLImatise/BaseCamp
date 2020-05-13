class: CommandLineTool
id: multi_parallel_pick_otus.py.cwl
inputs:
- id: input_fna
  doc: The names of the sequence files that will be have job scripts generated to
    process them. The expected input is from the split_sequence_data.py script (e.g.
    0.fna, 1.fna, ..., n.fna).
  type: string[]
  inputBinding:
    prefix: --input_fna
- id: similarity
  doc: 'Sequence similarity threshold [default: 0.97]'
  type: string
  inputBinding:
    prefix: --similarity
- id: job_script_template
  doc: A file template containing placeholders for variables that this script will
    fill in when creating a new job script for each input FASTA query file. An example
    file for PBS systems is included with phylotoast.
  type: string
  inputBinding:
    prefix: --job_script_template
- id: database
  doc: The path to the sequence database file to run the BLAST against.
  type: string
  inputBinding:
    prefix: --database
- id: wall_time
  doc: The maximum running time in hours for each script. Default is 10 hours.
  type: string
  inputBinding:
    prefix: --walltime
- id: job_name
  doc: A descriptive name for the job script that will appear when checking the job
    status. Max length is 15 characters, but '_#' will be appended to the name you
    provide to differentiate among all the jobs, so this parameter will be truncated
    if necessary to accommodate for the number of input files.
  type: string
  inputBinding:
    prefix: --job_name
- id: verbose
  doc: This will cause the program to print the full path for each output file to
    the command line. This can be used for informational purposes or to pipe (|) to
    the PBS multi-submission script to automate job submission as soon as the scripts
    are created.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_parallel_pick_otus.py
