class: CommandLineTool
id: multi_parallel_pick_otus.py.cwl
inputs:
- id: in_input_fna
  doc: "The names of the sequence files that will be have job\nscripts generated to\
    \ process them. The expected input\nis from the split_sequence_data.py script\
    \ (e.g. 0.fna,\n1.fna, ..., n.fna)."
  type: string[]
  inputBinding:
    prefix: --input_fna
- id: in_similarity
  doc: 'Sequence similarity threshold [default: 0.97]'
  type: double?
  inputBinding:
    prefix: --similarity
- id: in_job_script_template
  doc: "A file template containing placeholders for variables\nthat this script will\
    \ fill in when creating a new job\nscript for each input FASTA query file. An\
    \ example\nfile for PBS systems is included with phylotoast."
  type: File?
  inputBinding:
    prefix: --job_script_template
- id: in_database
  doc: "The path to the sequence database file to run the\nBLAST against."
  type: File?
  inputBinding:
    prefix: --database
- id: in_wall_time
  doc: "The maximum running time in hours for each script.\nDefault is 10 hours."
  type: long?
  inputBinding:
    prefix: --walltime
- id: in_job_name
  doc: "A descriptive name for the job script that will appear\nwhen checking the\
    \ job status. Max length is 15\ncharacters, but '_#' will be appended to the name\
    \ you\nprovide to differentiate among all the jobs, so this\nparameter will be\
    \ truncated if necessary to\naccommodate for the number of input files."
  type: long?
  inputBinding:
    prefix: --job_name
- id: in_verbose
  doc: "This will cause the program to print the full path for\neach output file to\
    \ the command line. This can be used\nfor informational purposes or to pipe (|)\
    \ to the PBS\nmulti-submission script to automate job submission as\nsoon as the\
    \ scripts are created.\n"
  type: File?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: "This will cause the program to print the full path for\neach output file to\
    \ the command line. This can be used\nfor informational purposes or to pipe (|)\
    \ to the PBS\nmulti-submission script to automate job submission as\nsoon as the\
    \ scripts are created.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- multi_parallel_pick_otus.py
